import 'package:flutter_github_client/graphql/repository_detail_query.graphql.dart';
import 'package:flutter_github_client/graphql/repository_list_query.graphql.dart';
import 'package:flutter_github_client/graphql/schema.docs.graphql.dart';
import 'package:flutter_github_client/graphql/starred_repository_list_query.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void Function({
  required bool viewerHasStarred,
  required String id,
}) useStar() {
  final client = useGraphQLClient();

  final star = useMutation$Star(
    WidgetOptions$Mutation$Star(
      update: (_, result) {
        final data = client.readQuery$StarredRepositoryList();
        final items = data?.viewer.starredRepositories.edges?.nonNulls
                .map((e) => e.node)
                .toList() ??
            [];
        if (data == null) return;
        if (result?.parsedData?.addStar?.starrable
            case final Fragment$RepositoryItem item) {
          items.add(item);
          client.writeQuery$StarredRepositoryList(
            data: data.copyWith(
              viewer: data.viewer.copyWith(
                starredRepositories: data.viewer.starredRepositories.copyWith(
                  edges: items
                      .map(
                        (e) =>
                            // ignore: lines_longer_than_80_chars
                            Query$StarredRepositoryList$viewer$starredRepositories$edges(
                          node: e,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          );
        }
      },
    ),
  );

  final unstar = useMutation$Unstar(
    WidgetOptions$Mutation$Unstar(
      update: (_, result) {
        final data = client.readQuery$StarredRepositoryList();
        if (data == null) return;
        final edges = data.viewer.starredRepositories.edges;
        if (result?.parsedData?.removeStar?.starrable
            case final Fragment$RepositoryItem item) {
          final updatedEdges =
              edges?.where((e) => e?.node.id != item.id).toList();
          client.writeQuery$StarredRepositoryList(
            data: data.copyWith(
              viewer: data.viewer.copyWith(
                starredRepositories: data.viewer.starredRepositories.copyWith(
                  edges: updatedEdges,
                ),
              ),
            ),
          );
        }
      },
    ),
  );

  return useCallback(({
    required bool viewerHasStarred,
    required String id,
  }) {
    if (viewerHasStarred) {
      unstar.runMutation(
        Variables$Mutation$Unstar(
          input: Input$RemoveStarInput(starrableId: id),
        ),
      );
    } else {
      star.runMutation(
        Variables$Mutation$Star(
          input: Input$AddStarInput(starrableId: id),
        ),
      );
    }
  });
}
