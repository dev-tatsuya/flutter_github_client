import 'package:flutter_github_client/feature/repository/domain_model.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.graphql.dart';
import 'package:flutter_github_client/util/util.dart';

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
      issueCount: null,
      licenseName: null,
    );
  }
}

extension Fragment$LanguageDataExt on Fragment$LanguageData {
  Language toDomain() {
    return Language(name: name, color: color);
  }
}
