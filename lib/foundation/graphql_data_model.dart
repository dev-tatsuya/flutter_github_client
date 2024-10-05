import 'package:flutter_github_client/feature/repository/repository.dart';
import 'package:flutter_github_client/foundation/graphql_data_model.graphql.dart';
import 'package:flutter_github_client/util/util.dart';

extension Fragment$RepositoryDataExt on Fragment$RepositoryData {
  Repository toEntity() {
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
      language: primaryLanguage?.toEntity(),
    );
  }
}

extension Fragment$LanguageDataExt on Fragment$LanguageData {
  Language toEntity() {
    return Language(name: name, color: color);
  }
}
