import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';

class Repository {
  Repository({
    required this.id,
    required this.name,
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

    return Repository(
      id: item.id,
      name: item.nameWithOwner,
      description: item.description,
      viewerHasStarred: item.viewerHasStarred,
      starredCount: item.stargazerCount,
      topics: item.repositoryTopics.edges
              ?.where((e) => e != null && e.node != null)
              .map((e) => Topic.fromGraphQL(e!.node!.topic))
              .toList() ??
          [],
      language: language,
    );
  }

  final String id;
  final String name;
  final String? description;
  final bool viewerHasStarred;
  final int starredCount;
  final List<Topic> topics;
  final Language? language;
}

class Topic {
  Topic({
    required this.id,
    required this.name,
  });

  factory Topic.fromGraphQL(Fragment$TopicItem item) {
    return Topic(id: item.id, name: item.name);
  }

  final String id;
  final String name;
}

class Language {
  Language({
    required this.id,
    required this.name,
    required this.color,
  });

  factory Language.fromGraphQL(Fragment$LanguageItem item) {
    return Language(id: item.id, name: item.name, color: item.color);
  }

  final String id;
  final String name;
  final String? color;
}
