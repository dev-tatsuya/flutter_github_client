import 'package:flutter/material.dart';
import 'package:flutter_github_client/core/domain_model.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.graphql.dart';
import 'package:flutter_github_client/foundation/graphql/schema.docs.graphql.dart';
import 'package:flutter_github_client/state/api_protocol_state.dart';
import 'package:flutter_github_client/state/repository_state.dart';
import 'package:flutter_github_client/ui/component/star_button.graphql.dart';
import 'package:flutter_github_client/ui/starred_repository_list/starred_repository_list_page.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StarButton extends HookConsumerWidget {
  const StarButton({required this.repository, super.key});

  final Repository repository;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);
    final starGraphQL = _useStar();

    final onPressed = useCallback(
      () {
        switch (apiProtocol) {
          case ApiProtocolType.graphql:
            starGraphQL(
              viewerHasStarred: repository.viewerHasStarred,
              id: repository.id,
            );
          case ApiProtocolType.rest:
            ref.read(
              starProvider(
                viewerHasStarred: repository.viewerHasStarred,
                owner: repository.owner,
                repositoryName: repository.name,
              ).future,
            );
        }
      },
      [apiProtocol, repository],
    );

    return repository.viewerHasStarred
        ? OutlinedButton(onPressed: onPressed, child: const Text('Unstar'))
        : FilledButton(onPressed: onPressed, child: const Text('Star'));
  }
}

void Function({
  required bool viewerHasStarred,
  required String id,
}) _useStar() {
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
