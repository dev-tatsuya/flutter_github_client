import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class GraphQLContainer<TParsed> extends StatelessWidget {
  const GraphQLContainer({
    required this.result,
    required this.builder,
    super.key,
  });

  final QueryResult<TParsed> result;
  final Widget? Function(TParsed data) builder;

  @override
  Widget build(BuildContext context) {
    final data = result.parsedData;
    const empty = Center(child: Text('Empty'));

    if (result.hasException) {
      return Center(child: Text('${result.exception}'));
    } else if (result.isLoading) {
      return const Center(child: Text('Fetching ...'));
    } else if (data == null) {
      return empty;
    } else {
      return builder(data) ?? empty;
    }
  }
}
