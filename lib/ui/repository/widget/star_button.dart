import 'package:flutter/material.dart';
import 'package:flutter_github_client/domain/model/repository.dart';
import 'package:flutter_github_client/notifier/api_protocol.dart';
import 'package:flutter_github_client/provider/repository/starred_repository_list.dart';
import 'package:flutter_github_client/provider/service/api/model/graphql_data_model.graphql.dart';
import 'package:flutter_github_client/provider/service/api/rest_client.dart';
import 'package:flutter_github_client/schema/schema.docs.graphql.dart';
import 'package:flutter_github_client/ui/repository/starred_repository_list_page.graphql.dart';
import 'package:flutter_github_client/ui/repository/widget/star_button.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StarButton extends HookConsumerWidget {
  const StarButton({required this.repository, super.key});

  final Repository repository;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final star = _useStar();

    return repository.viewerHasStarred
        ? OutlinedButton(
            onPressed: () => star(repository: repository),
            child: const Text('Unstar'),
          )
        : FilledButton(
            onPressed: () => star(repository: repository),
            child: const Text('Star'),
          );
  }
}

void Function({
  required Repository repository,
}) _useStar() {
  final ref = useContext() as WidgetRef;
  final apiProtocol = ref.watch(apiProtocolProvider);

  final graphQLClient = useGraphQLClient();
  final restClient = ref.read(restClientProvider);

  final star = useMutation$Star(
    WidgetOptions$Mutation$Star(
      update: (_, result) {
        final cachedQuery = graphQLClient.readQuery$StarredRepositoryList();
        final cachedList = cachedQuery
                ?.viewer.starredRepositories.edges?.nonNulls
                .map((e) => e.node)
                .toList() ??
            [];
        if (cachedQuery == null) return;
        if (result?.parsedData?.addStar?.starrable
            case final Fragment$RepositoryData data) {
          cachedList.add(data);
          graphQLClient.writeQuery$StarredRepositoryList(
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
        final cachedQuery = graphQLClient.readQuery$StarredRepositoryList();
        if (cachedQuery == null) return;
        final cachedEdges = cachedQuery.viewer.starredRepositories.edges;
        if (result?.parsedData?.removeStar?.starrable
            case final Fragment$RepositoryData data) {
          final updatedEdges =
              cachedEdges?.where((e) => e?.node.id != data.id).toList();
          graphQLClient.writeQuery$StarredRepositoryList(
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
    required Repository repository,
  }) async {
    switch (apiProtocol) {
      case ApiProtocolType.graphql:
        if (repository.viewerHasStarred) {
          unstar.runMutation(
            Variables$Mutation$Unstar(
              input: Input$RemoveStarInput(starrableId: repository.id),
            ),
          );
        } else {
          star.runMutation(
            Variables$Mutation$Star(
              input: Input$AddStarInput(starrableId: repository.id),
            ),
          );
        }
      case ApiProtocolType.rest:
        if (repository.viewerHasStarred) {
          await restClient.unstar(repository.owner, repository.name);
        } else {
          await restClient.star(repository.owner, repository.name);
        }

        ref.invalidate(starredRepositoryListProvider);
    }
  }, [
    apiProtocol,
  ]);
}
