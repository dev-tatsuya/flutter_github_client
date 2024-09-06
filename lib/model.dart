import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';
import 'package:flutter_github_client/rest/rest.dart';

class Repository {
  Repository({
    required this.id,
    required this.name,
    required this.ownerName,
    required this.description,
    required this.viewerHasStarred,
    required this.starredCount,
    required this.topics,
    required this.language,
  });

  factory Repository.fromGraphQL(Fragment$RepositoryItem item) {
    Language? language;
    if (item.primaryLanguage case final Fragment$LanguageItem item) {
      language = Language.fromGraphQL(item);
    }

    final (owner, name) = _separate(item.nameWithOwner);

    return Repository(
      id: item.id,
      name: name,
      ownerName: owner,
      description: item.description,
      viewerHasStarred: item.viewerHasStarred,
      starredCount: item.stargazerCount,
      topics: item.repositoryTopics.edges
              ?.where((e) => e != null && e.node != null)
              .map((e) => e!.node!.topic.name)
              .toList() ??
          [],
      language: language,
    );
  }

  factory Repository.fromRest(RepoData item) {
    Language? language;
    if (item.language case final String item) {
      language = Language(name: item, color: item);
    }

    final (owner, name) = _separate(item.fullName);

    return Repository(
      id: item.nodeId,
      name: name,
      ownerName: owner,
      description: item.description,
      viewerHasStarred: false,
      starredCount: item.stargazersCount,
      topics: item.topics.take(5).toList(),
      language: language,
    );
  }

  final String id;
  final String name;
  final String ownerName;
  final String? description;
  final bool viewerHasStarred;
  final int starredCount;
  final List<String> topics;
  final Language? language;

  String get nameWithOwner => '$ownerName/$name';

  Repository copyWith({
    String? id,
    String? name,
    String? ownerName,
    String? description,
    bool? viewerHasStarred,
    int? starredCount,
    List<String>? topics,
    Language? language,
  }) {
    return Repository(
      id: id ?? this.id,
      name: name ?? this.name,
      ownerName: ownerName ?? this.ownerName,
      description: description ?? this.description,
      viewerHasStarred: viewerHasStarred ?? this.viewerHasStarred,
      starredCount: starredCount ?? this.starredCount,
      topics: topics ?? this.topics,
      language: language ?? this.language,
    );
  }
}

class Language {
  Language({
    required this.name,
    required this.color,
  });

  factory Language.fromGraphQL(Fragment$LanguageItem item) {
    return Language(name: item.name, color: item.color);
  }

  final String name;
  final String? color;

  Language copyWith({String? name, String? color}) {
    return Language(
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }
}

(String, String) _separate(String nameWithOwner) {
  final list = nameWithOwner.split('/');
  return (list[0], list[1]);
}
