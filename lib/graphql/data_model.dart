import 'package:flutter_github_client/domain_model.dart';
import 'package:flutter_github_client/graphql/repository_list_query.graphql.dart';
import 'package:flutter_github_client/util.dart';

extension Fragment$RepositoryDataExt on Fragment$RepositoryData {
  Repository toDomain() {
    final (owner, name) = separate(nameWithOwner);

    return Repository(
      id: id,
      name: name,
      owner: owner,
      description: description,
      viewerHasStarred: viewerHasStarred,
      starredCount: stargazerCount,
      topics: repositoryTopics.edges
              ?.where((e) => e != null && e.node != null)
              .map((e) => e!.node!.topic.name)
              .toList() ??
          [],
      language: primaryLanguage?.toDomain(),
    );
  }
}

extension Fragment$LanguageDataExt on Fragment$LanguageData {
  Language toDomain() {
    return Language(name: name, color: color);
  }
}