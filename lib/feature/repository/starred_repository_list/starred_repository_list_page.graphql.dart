import '../../../foundation/graphql_data_model.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$StarredRepositoryList {
  Query$StarredRepositoryList({
    required this.viewer,
    this.$__typename = 'Query',
  });

  factory Query$StarredRepositoryList.fromJson(Map<String, dynamic> json) {
    final l$viewer = json['viewer'];
    final l$$__typename = json['__typename'];
    return Query$StarredRepositoryList(
      viewer: Query$StarredRepositoryList$viewer.fromJson(
          (l$viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StarredRepositoryList$viewer viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$viewer = viewer;
    _resultData['viewer'] = l$viewer.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StarredRepositoryList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$viewer = viewer;
    final lOther$viewer = other.viewer;
    if (l$viewer != lOther$viewer) {
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

extension UtilityExtension$Query$StarredRepositoryList
    on Query$StarredRepositoryList {
  CopyWith$Query$StarredRepositoryList<Query$StarredRepositoryList>
      get copyWith => CopyWith$Query$StarredRepositoryList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StarredRepositoryList<TRes> {
  factory CopyWith$Query$StarredRepositoryList(
    Query$StarredRepositoryList instance,
    TRes Function(Query$StarredRepositoryList) then,
  ) = _CopyWithImpl$Query$StarredRepositoryList;

  factory CopyWith$Query$StarredRepositoryList.stub(TRes res) =
      _CopyWithStubImpl$Query$StarredRepositoryList;

  TRes call({
    Query$StarredRepositoryList$viewer? viewer,
    String? $__typename,
  });
  CopyWith$Query$StarredRepositoryList$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$StarredRepositoryList<TRes>
    implements CopyWith$Query$StarredRepositoryList<TRes> {
  _CopyWithImpl$Query$StarredRepositoryList(
    this._instance,
    this._then,
  );

  final Query$StarredRepositoryList _instance;

  final TRes Function(Query$StarredRepositoryList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StarredRepositoryList(
        viewer: viewer == _undefined || viewer == null
            ? _instance.viewer
            : (viewer as Query$StarredRepositoryList$viewer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StarredRepositoryList$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return CopyWith$Query$StarredRepositoryList$viewer(
        local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$StarredRepositoryList<TRes>
    implements CopyWith$Query$StarredRepositoryList<TRes> {
  _CopyWithStubImpl$Query$StarredRepositoryList(this._res);

  TRes _res;

  call({
    Query$StarredRepositoryList$viewer? viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StarredRepositoryList$viewer<TRes> get viewer =>
      CopyWith$Query$StarredRepositoryList$viewer.stub(_res);
}

const documentNodeQueryStarredRepositoryList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'StarredRepositoryList'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'starredRepositories'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
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
Query$StarredRepositoryList _parserFn$Query$StarredRepositoryList(
        Map<String, dynamic> data) =>
    Query$StarredRepositoryList.fromJson(data);
typedef OnQueryComplete$Query$StarredRepositoryList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$StarredRepositoryList?,
);

class Options$Query$StarredRepositoryList
    extends graphql.QueryOptions<Query$StarredRepositoryList> {
  Options$Query$StarredRepositoryList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StarredRepositoryList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StarredRepositoryList? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                        : _parserFn$Query$StarredRepositoryList(data),
                  ),
          onError: onError,
          document: documentNodeQueryStarredRepositoryList,
          parserFn: _parserFn$Query$StarredRepositoryList,
        );

  final OnQueryComplete$Query$StarredRepositoryList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$StarredRepositoryList
    extends graphql.WatchQueryOptions<Query$StarredRepositoryList> {
  WatchOptions$Query$StarredRepositoryList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StarredRepositoryList? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryStarredRepositoryList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$StarredRepositoryList,
        );
}

class FetchMoreOptions$Query$StarredRepositoryList
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StarredRepositoryList(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryStarredRepositoryList,
        );
}

extension ClientExtension$Query$StarredRepositoryList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StarredRepositoryList>>
      query$StarredRepositoryList(
              [Options$Query$StarredRepositoryList? options]) async =>
          await this.query(options ?? Options$Query$StarredRepositoryList());
  graphql.ObservableQuery<
      Query$StarredRepositoryList> watchQuery$StarredRepositoryList(
          [WatchOptions$Query$StarredRepositoryList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$StarredRepositoryList());
  void writeQuery$StarredRepositoryList({
    required Query$StarredRepositoryList data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryStarredRepositoryList)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$StarredRepositoryList? readQuery$StarredRepositoryList(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryStarredRepositoryList)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$StarredRepositoryList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StarredRepositoryList>
    useQuery$StarredRepositoryList(
            [Options$Query$StarredRepositoryList? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$StarredRepositoryList());
graphql.ObservableQuery<Query$StarredRepositoryList>
    useWatchQuery$StarredRepositoryList(
            [WatchOptions$Query$StarredRepositoryList? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$StarredRepositoryList());

class Query$StarredRepositoryList$Widget
    extends graphql_flutter.Query<Query$StarredRepositoryList> {
  Query$StarredRepositoryList$Widget({
    widgets.Key? key,
    Options$Query$StarredRepositoryList? options,
    required graphql_flutter.QueryBuilder<Query$StarredRepositoryList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$StarredRepositoryList(),
          builder: builder,
        );
}

class Query$StarredRepositoryList$viewer {
  Query$StarredRepositoryList$viewer({
    required this.starredRepositories,
    this.$__typename = 'User',
  });

  factory Query$StarredRepositoryList$viewer.fromJson(
      Map<String, dynamic> json) {
    final l$starredRepositories = json['starredRepositories'];
    final l$$__typename = json['__typename'];
    return Query$StarredRepositoryList$viewer(
      starredRepositories:
          Query$StarredRepositoryList$viewer$starredRepositories.fromJson(
              (l$starredRepositories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StarredRepositoryList$viewer$starredRepositories
      starredRepositories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$starredRepositories = starredRepositories;
    _resultData['starredRepositories'] = l$starredRepositories.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$starredRepositories = starredRepositories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$starredRepositories,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StarredRepositoryList$viewer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$starredRepositories = starredRepositories;
    final lOther$starredRepositories = other.starredRepositories;
    if (l$starredRepositories != lOther$starredRepositories) {
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

extension UtilityExtension$Query$StarredRepositoryList$viewer
    on Query$StarredRepositoryList$viewer {
  CopyWith$Query$StarredRepositoryList$viewer<
          Query$StarredRepositoryList$viewer>
      get copyWith => CopyWith$Query$StarredRepositoryList$viewer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StarredRepositoryList$viewer<TRes> {
  factory CopyWith$Query$StarredRepositoryList$viewer(
    Query$StarredRepositoryList$viewer instance,
    TRes Function(Query$StarredRepositoryList$viewer) then,
  ) = _CopyWithImpl$Query$StarredRepositoryList$viewer;

  factory CopyWith$Query$StarredRepositoryList$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$StarredRepositoryList$viewer;

  TRes call({
    Query$StarredRepositoryList$viewer$starredRepositories? starredRepositories,
    String? $__typename,
  });
  CopyWith$Query$StarredRepositoryList$viewer$starredRepositories<TRes>
      get starredRepositories;
}

class _CopyWithImpl$Query$StarredRepositoryList$viewer<TRes>
    implements CopyWith$Query$StarredRepositoryList$viewer<TRes> {
  _CopyWithImpl$Query$StarredRepositoryList$viewer(
    this._instance,
    this._then,
  );

  final Query$StarredRepositoryList$viewer _instance;

  final TRes Function(Query$StarredRepositoryList$viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? starredRepositories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StarredRepositoryList$viewer(
        starredRepositories:
            starredRepositories == _undefined || starredRepositories == null
                ? _instance.starredRepositories
                : (starredRepositories
                    as Query$StarredRepositoryList$viewer$starredRepositories),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StarredRepositoryList$viewer$starredRepositories<TRes>
      get starredRepositories {
    final local$starredRepositories = _instance.starredRepositories;
    return CopyWith$Query$StarredRepositoryList$viewer$starredRepositories(
        local$starredRepositories, (e) => call(starredRepositories: e));
  }
}

class _CopyWithStubImpl$Query$StarredRepositoryList$viewer<TRes>
    implements CopyWith$Query$StarredRepositoryList$viewer<TRes> {
  _CopyWithStubImpl$Query$StarredRepositoryList$viewer(this._res);

  TRes _res;

  call({
    Query$StarredRepositoryList$viewer$starredRepositories? starredRepositories,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StarredRepositoryList$viewer$starredRepositories<TRes>
      get starredRepositories =>
          CopyWith$Query$StarredRepositoryList$viewer$starredRepositories.stub(
              _res);
}

class Query$StarredRepositoryList$viewer$starredRepositories {
  Query$StarredRepositoryList$viewer$starredRepositories({
    this.edges,
    this.$__typename = 'StarredRepositoryConnection',
  });

  factory Query$StarredRepositoryList$viewer$starredRepositories.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$StarredRepositoryList$viewer$starredRepositories(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$StarredRepositoryList$viewer$starredRepositories$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$StarredRepositoryList$viewer$starredRepositories$edges?>?
      edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StarredRepositoryList$viewer$starredRepositories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$StarredRepositoryList$viewer$starredRepositories
    on Query$StarredRepositoryList$viewer$starredRepositories {
  CopyWith$Query$StarredRepositoryList$viewer$starredRepositories<
          Query$StarredRepositoryList$viewer$starredRepositories>
      get copyWith =>
          CopyWith$Query$StarredRepositoryList$viewer$starredRepositories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StarredRepositoryList$viewer$starredRepositories<
    TRes> {
  factory CopyWith$Query$StarredRepositoryList$viewer$starredRepositories(
    Query$StarredRepositoryList$viewer$starredRepositories instance,
    TRes Function(Query$StarredRepositoryList$viewer$starredRepositories) then,
  ) = _CopyWithImpl$Query$StarredRepositoryList$viewer$starredRepositories;

  factory CopyWith$Query$StarredRepositoryList$viewer$starredRepositories.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StarredRepositoryList$viewer$starredRepositories;

  TRes call({
    List<Query$StarredRepositoryList$viewer$starredRepositories$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$StarredRepositoryList$viewer$starredRepositories$edges?>? Function(
              Iterable<
                  CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges<
                      Query$StarredRepositoryList$viewer$starredRepositories$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$StarredRepositoryList$viewer$starredRepositories<TRes>
    implements
        CopyWith$Query$StarredRepositoryList$viewer$starredRepositories<TRes> {
  _CopyWithImpl$Query$StarredRepositoryList$viewer$starredRepositories(
    this._instance,
    this._then,
  );

  final Query$StarredRepositoryList$viewer$starredRepositories _instance;

  final TRes Function(Query$StarredRepositoryList$viewer$starredRepositories)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StarredRepositoryList$viewer$starredRepositories(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<
                Query$StarredRepositoryList$viewer$starredRepositories$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$StarredRepositoryList$viewer$starredRepositories$edges?>? Function(
                  Iterable<
                      CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges<
                          Query$StarredRepositoryList$viewer$starredRepositories$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$StarredRepositoryList$viewer$starredRepositories<
        TRes>
    implements
        CopyWith$Query$StarredRepositoryList$viewer$starredRepositories<TRes> {
  _CopyWithStubImpl$Query$StarredRepositoryList$viewer$starredRepositories(
      this._res);

  TRes _res;

  call({
    List<Query$StarredRepositoryList$viewer$starredRepositories$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$StarredRepositoryList$viewer$starredRepositories$edges {
  Query$StarredRepositoryList$viewer$starredRepositories$edges({
    required this.node,
    this.$__typename = 'StarredRepositoryEdge',
  });

  factory Query$StarredRepositoryList$viewer$starredRepositories$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$StarredRepositoryList$viewer$starredRepositories$edges(
      node: Fragment$RepositoryData.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$RepositoryData node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$StarredRepositoryList$viewer$starredRepositories$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$StarredRepositoryList$viewer$starredRepositories$edges
    on Query$StarredRepositoryList$viewer$starredRepositories$edges {
  CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges<
          Query$StarredRepositoryList$viewer$starredRepositories$edges>
      get copyWith =>
          CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges<
    TRes> {
  factory CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges(
    Query$StarredRepositoryList$viewer$starredRepositories$edges instance,
    TRes Function(Query$StarredRepositoryList$viewer$starredRepositories$edges)
        then,
  ) = _CopyWithImpl$Query$StarredRepositoryList$viewer$starredRepositories$edges;

  factory CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StarredRepositoryList$viewer$starredRepositories$edges;

  TRes call({
    Fragment$RepositoryData? node,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryData<TRes> get node;
}

class _CopyWithImpl$Query$StarredRepositoryList$viewer$starredRepositories$edges<
        TRes>
    implements
        CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges<
            TRes> {
  _CopyWithImpl$Query$StarredRepositoryList$viewer$starredRepositories$edges(
    this._instance,
    this._then,
  );

  final Query$StarredRepositoryList$viewer$starredRepositories$edges _instance;

  final TRes Function(
      Query$StarredRepositoryList$viewer$starredRepositories$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StarredRepositoryList$viewer$starredRepositories$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$RepositoryData),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryData<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$RepositoryData(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$StarredRepositoryList$viewer$starredRepositories$edges<
        TRes>
    implements
        CopyWith$Query$StarredRepositoryList$viewer$starredRepositories$edges<
            TRes> {
  _CopyWithStubImpl$Query$StarredRepositoryList$viewer$starredRepositories$edges(
      this._res);

  TRes _res;

  call({
    Fragment$RepositoryData? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryData<TRes> get node =>
      CopyWith$Fragment$RepositoryData.stub(_res);
}
