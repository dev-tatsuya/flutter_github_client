import '../../foundation/graphql/data_model.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$RepositoryDetail {
  factory Variables$Query$RepositoryDetail({
    required String owner,
    required String name,
  }) =>
      Variables$Query$RepositoryDetail._({
        r'owner': owner,
        r'name': name,
      });

  Variables$Query$RepositoryDetail._(this._$data);

  factory Variables$Query$RepositoryDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$owner = data['owner'];
    result$data['owner'] = (l$owner as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Variables$Query$RepositoryDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get owner => (_$data['owner'] as String);

  String get name => (_$data['name'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$owner = owner;
    result$data['owner'] = l$owner;
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Variables$Query$RepositoryDetail<Variables$Query$RepositoryDetail>
      get copyWith => CopyWith$Variables$Query$RepositoryDetail(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$RepositoryDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$owner = owner;
    final l$name = name;
    return Object.hashAll([
      l$owner,
      l$name,
    ]);
  }
}

abstract class CopyWith$Variables$Query$RepositoryDetail<TRes> {
  factory CopyWith$Variables$Query$RepositoryDetail(
    Variables$Query$RepositoryDetail instance,
    TRes Function(Variables$Query$RepositoryDetail) then,
  ) = _CopyWithImpl$Variables$Query$RepositoryDetail;

  factory CopyWith$Variables$Query$RepositoryDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$RepositoryDetail;

  TRes call({
    String? owner,
    String? name,
  });
}

class _CopyWithImpl$Variables$Query$RepositoryDetail<TRes>
    implements CopyWith$Variables$Query$RepositoryDetail<TRes> {
  _CopyWithImpl$Variables$Query$RepositoryDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$RepositoryDetail _instance;

  final TRes Function(Variables$Query$RepositoryDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? owner = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Variables$Query$RepositoryDetail._({
        ..._instance._$data,
        if (owner != _undefined && owner != null) 'owner': (owner as String),
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$RepositoryDetail<TRes>
    implements CopyWith$Variables$Query$RepositoryDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$RepositoryDetail(this._res);

  TRes _res;

  call({
    String? owner,
    String? name,
  }) =>
      _res;
}

class Query$RepositoryDetail {
  Query$RepositoryDetail({
    this.repository,
    this.$__typename = 'Query',
  });

  factory Query$RepositoryDetail.fromJson(Map<String, dynamic> json) {
    final l$repository = json['repository'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryDetail(
      repository: l$repository == null
          ? null
          : Fragment$RepositoryData.fromJson(
              (l$repository as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$RepositoryData? repository;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$repository = repository;
    _resultData['repository'] = l$repository?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$repository = repository;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$repository,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RepositoryDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$repository = repository;
    final lOther$repository = other.repository;
    if (l$repository != lOther$repository) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$RepositoryDetail on Query$RepositoryDetail {
  CopyWith$Query$RepositoryDetail<Query$RepositoryDetail> get copyWith =>
      CopyWith$Query$RepositoryDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RepositoryDetail<TRes> {
  factory CopyWith$Query$RepositoryDetail(
    Query$RepositoryDetail instance,
    TRes Function(Query$RepositoryDetail) then,
  ) = _CopyWithImpl$Query$RepositoryDetail;

  factory CopyWith$Query$RepositoryDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryDetail;

  TRes call({
    Fragment$RepositoryData? repository,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryData<TRes> get repository;
}

class _CopyWithImpl$Query$RepositoryDetail<TRes>
    implements CopyWith$Query$RepositoryDetail<TRes> {
  _CopyWithImpl$Query$RepositoryDetail(
    this._instance,
    this._then,
  );

  final Query$RepositoryDetail _instance;

  final TRes Function(Query$RepositoryDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? repository = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryDetail(
        repository: repository == _undefined
            ? _instance.repository
            : (repository as Fragment$RepositoryData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryData<TRes> get repository {
    final local$repository = _instance.repository;
    return local$repository == null
        ? CopyWith$Fragment$RepositoryData.stub(_then(_instance))
        : CopyWith$Fragment$RepositoryData(
            local$repository, (e) => call(repository: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryDetail<TRes>
    implements CopyWith$Query$RepositoryDetail<TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail(this._res);

  TRes _res;

  call({
    Fragment$RepositoryData? repository,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryData<TRes> get repository =>
      CopyWith$Fragment$RepositoryData.stub(_res);
}

const documentNodeQueryRepositoryDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RepositoryDetail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'owner')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'repository'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'owner'),
            value: VariableNode(name: NameNode(value: 'owner')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'RepositoryData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionRepositoryData,
  fragmentDefinitionTopicData,
  fragmentDefinitionLanguageData,
]);
Query$RepositoryDetail _parserFn$Query$RepositoryDetail(
        Map<String, dynamic> data) =>
    Query$RepositoryDetail.fromJson(data);
typedef OnQueryComplete$Query$RepositoryDetail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$RepositoryDetail?,
);

class Options$Query$RepositoryDetail
    extends graphql.QueryOptions<Query$RepositoryDetail> {
  Options$Query$RepositoryDetail({
    String? operationName,
    required Variables$Query$RepositoryDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RepositoryDetail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RepositoryDetail? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$RepositoryDetail(data),
                  ),
          onError: onError,
          document: documentNodeQueryRepositoryDetail,
          parserFn: _parserFn$Query$RepositoryDetail,
        );

  final OnQueryComplete$Query$RepositoryDetail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$RepositoryDetail
    extends graphql.WatchQueryOptions<Query$RepositoryDetail> {
  WatchOptions$Query$RepositoryDetail({
    String? operationName,
    required Variables$Query$RepositoryDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RepositoryDetail? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryRepositoryDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$RepositoryDetail,
        );
}

class FetchMoreOptions$Query$RepositoryDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RepositoryDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$RepositoryDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryRepositoryDetail,
        );
}

extension ClientExtension$Query$RepositoryDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RepositoryDetail>> query$RepositoryDetail(
          Options$Query$RepositoryDetail options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$RepositoryDetail> watchQuery$RepositoryDetail(
          WatchOptions$Query$RepositoryDetail options) =>
      this.watchQuery(options);
  void writeQuery$RepositoryDetail({
    required Query$RepositoryDetail data,
    required Variables$Query$RepositoryDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryRepositoryDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$RepositoryDetail? readQuery$RepositoryDetail({
    required Variables$Query$RepositoryDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryRepositoryDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$RepositoryDetail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$RepositoryDetail>
    useQuery$RepositoryDetail(Options$Query$RepositoryDetail options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$RepositoryDetail> useWatchQuery$RepositoryDetail(
        WatchOptions$Query$RepositoryDetail options) =>
    graphql_flutter.useWatchQuery(options);

class Query$RepositoryDetail$Widget
    extends graphql_flutter.Query<Query$RepositoryDetail> {
  Query$RepositoryDetail$Widget({
    widgets.Key? key,
    required Options$Query$RepositoryDetail options,
    required graphql_flutter.QueryBuilder<Query$RepositoryDetail> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}
