import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';
import 'package:flutter_github_client/rest/rest.dart';

class Repository {
  Repository({
    required this.id,
    required this.name,
    required this.owner,
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
      owner: owner,
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
    if (item.language case final String languageName) {
      language = Language(
        name: languageName,
        color: _toHexColorCode(languageName),
      );
    }

    final (owner, name) = _separate(item.fullName);

    return Repository(
      id: item.nodeId,
      name: name,
      owner: owner,
      description: item.description,
      viewerHasStarred: false,
      starredCount: item.stargazersCount,
      topics: item.topics.take(5).toList(),
      language: language,
    );
  }

  final String id;
  final String name;
  final String owner;
  final String? description;
  final bool viewerHasStarred;
  final int starredCount;
  final List<String> topics;
  final Language? language;

  String get nameWithOwner => '$owner/$name';

  Repository copyWith({
    String? id,
    String? name,
    String? owner,
    String? description,
    bool? viewerHasStarred,
    int? starredCount,
    List<String>? topics,
    Language? language,
  }) {
    return Repository(
      id: id ?? this.id,
      name: name ?? this.name,
      owner: owner ?? this.owner,
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

String? _toHexColorCode(String languageName) {
  return _languageColorPalette[languageName];
}

// Extract from https://github.com/ozh/github-colors/blob/master/colors.json
const _languageColorPalette = <String, String>{
  'Dart': '#00B4AB',
  'C++': '#f34b7d',
  'Python': '#3572A5',
  'Java': '#b07219',
  'Fortran': '#4d41b1',
};
