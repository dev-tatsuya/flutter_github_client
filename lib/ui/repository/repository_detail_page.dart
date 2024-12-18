import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/domain/model/repository.dart';
import 'package:flutter_github_client/notifier/api_protocol.dart';
import 'package:flutter_github_client/provider/repository/repository.dart';
import 'package:flutter_github_client/provider/service/api/model/graphql_data_model.dart';
import 'package:flutter_github_client/ui/repository/repository_detail_page.graphql.dart';
import 'package:flutter_github_client/ui/repository/widget/repository_list_item.dart';
import 'package:flutter_github_client/ui/repository/widget/star_button.dart';
import 'package:flutter_github_client/ui/widget/async_value_container.dart';
import 'package:flutter_github_client/ui/widget/graphql_query_container.dart';
import 'package:flutter_github_client/util/int_ext.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RepositoryDetailPage extends HookConsumerWidget {
  const RepositoryDetailPage({
    @pathParam required this.owner,
    @pathParam required this.name,
    super.key,
  });

  final String owner;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolProvider);

    Widget builder(Repository repository) {
      return _RepositoryDetailContainer(repository: repository);
    }

    final graphQLContainer = HookBuilder(
      builder: (context) {
        final query = useQuery$RepositoryDetail(
          Options$Query$RepositoryDetail(
            variables:
                Variables$Query$RepositoryDetail(owner: owner, name: name),
          ),
        );

        return GraphQLQueryContainer<Query$RepositoryDetail, Repository>(
          result: query.result,
          converter: (detail) {
            final data = detail.repository;
            return data!.toDomain().copyWith(
                  issueCount: data.issues.totalCount,
                  licenseName: data.licenseInfo?.spdxId,
                );
          },
          builder: builder,
        );
      },
    );

    final restContainer = HookConsumer(
      builder: (context, ref, child) {
        final asyncValue = ref.watch(
          repositoryDetailProvider(owner: owner, repositoryName: name),
        );
        return AsyncValueContainer(
          asyncValue: asyncValue,
          builder: builder,
        );

        // useFuture を使う場合
        // final asyncSnapshot = useFuture(
        //   useMemoized(
        //     () async {
        //       final data = await ref
        //           .watch(restClientProvider)
        //           .getRepository(owner, name);
        //       final repository = data.toEntity();
        //
        //       final starredIdList =
        //           await ref.watch(starredIdListProvider.future);
        //
        //       return repository.copyWith(
        //         viewerHasStarred: starredIdList.contains(repository.id),
        //       );
        //     },
        //     [ref.watch(starredIdListProvider)],
        //   ),
        // );
        // return AsyncSnapshotContainer(
        //   asyncSnapshot: asyncSnapshot,
        //   builder: builder,
        // );
      },
    );

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: switch (apiProtocol) {
        ApiProtocolType.graphql => graphQLContainer,
        ApiProtocolType.rest => restContainer,
      },
    );
  }
}

class _RepositoryDetailContainer extends StatelessWidget {
  const _RepositoryDetailContainer({required this.repository});

  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepositoryListItem(repository: repository, isUsedOnDetail: true),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: StarButton(repository: repository),
        ),
        const Gap(8),
        ListTile(
          leading: const Icon(Icons.adjust_rounded, color: Colors.black38),
          title: const Text('Issue'),
          trailing: Text(repository.issueCount?.format ?? '0'),
        ),
        ListTile(
          leading: const Icon(Icons.balance, color: Colors.black38),
          title: const Text('License'),
          trailing: Text(repository.licenseName ?? 'None'),
        ),
      ],
    );
  }
}
