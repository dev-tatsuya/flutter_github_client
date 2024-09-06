import 'package:flutter_github_client/foundation/graphql/schema.docs.graphql.dart';
import 'package:flutter_github_client/ui/repository_detail/repository_detail_query.graphql.dart';
import 'package:flutter_github_client/ui/repository_list/repository_list_query.graphql.dart';
import 'package:flutter_github_client/ui/starred_repository_list/starred_repository_list_query.graphql.dart';
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
        final cachedQuery = client.readQuery$StarredRepositoryList();
        final cachedList = cachedQuery
                ?.viewer.starredRepositories.edges?.nonNulls
                .map((e) => e.node)
                .toList() ??
            [];
        if (cachedQuery == null) return;
        if (result?.parsedData?.addStar?.starrable
            case final Fragment$RepositoryData data) {
          cachedList.add(data);
          client.writeQuery$StarredRepositoryList(
            data: cachedQuery.copyWith(
              viewer: cachedQuery.viewer.copyWith(
                starredRepositories:
                    cachedQuery.viewer.starredRepositories.copyWith(
                  edges: cachedList
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
        final cachedQuery = client.readQuery$StarredRepositoryList();
        if (cachedQuery == null) return;
        final cachedEdges = cachedQuery.viewer.starredRepositories.edges;
        if (result?.parsedData?.removeStar?.starrable
            case final Fragment$RepositoryData data) {
          final updatedEdges =
              cachedEdges?.where((e) => e?.node.id != data.id).toList();
          client.writeQuery$StarredRepositoryList(
            data: cachedQuery.copyWith(
              viewer: cachedQuery.viewer.copyWith(
                starredRepositories:
                    cachedQuery.viewer.starredRepositories.copyWith(
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
