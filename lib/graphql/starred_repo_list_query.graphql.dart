import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'repo_list_query.graphql.dart';

class Query$StarredRepoList {
  Query$StarredRepoList({
    required this.viewer,
    this.$__typename = 'Query',
  });

  factory Query$StarredRepoList.fromJson(Map<String, dynamic> json) {
    final l$viewer = json['viewer'];
    final l$$__typename = json['__typename'];
    return Query$StarredRepoList(
      viewer: Query$StarredRepoList$viewer.fromJson(
          (l$viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StarredRepoList$viewer viewer;

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
    if (!(other is Query$StarredRepoList) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$StarredRepoList on Query$StarredRepoList {
  CopyWith$Query$StarredRepoList<Query$StarredRepoList> get copyWith =>
      CopyWith$Query$StarredRepoList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StarredRepoList<TRes> {
  factory CopyWith$Query$StarredRepoList(
    Query$StarredRepoList instance,
    TRes Function(Query$StarredRepoList) then,
  ) = _CopyWithImpl$Query$StarredRepoList;

  factory CopyWith$Query$StarredRepoList.stub(TRes res) =
      _CopyWithStubImpl$Query$StarredRepoList;

  TRes call({
    Query$StarredRepoList$viewer? viewer,
    String? $__typename,
  });
  CopyWith$Query$StarredRepoList$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$StarredRepoList<TRes>
    implements CopyWith$Query$StarredRepoList<TRes> {
  _CopyWithImpl$Query$StarredRepoList(
    this._instance,
    this._then,
  );

  final Query$StarredRepoList _instance;

  final TRes Function(Query$StarredRepoList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StarredRepoList(
        viewer: viewer == _undefined || viewer == null
            ? _instance.viewer
            : (viewer as Query$StarredRepoList$viewer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StarredRepoList$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return CopyWith$Query$StarredRepoList$viewer(
        local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$StarredRepoList<TRes>
    implements CopyWith$Query$StarredRepoList<TRes> {
  _CopyWithStubImpl$Query$StarredRepoList(this._res);

  TRes _res;

  call({
    Query$StarredRepoList$viewer? viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StarredRepoList$viewer<TRes> get viewer =>
      CopyWith$Query$StarredRepoList$viewer.stub(_res);
}

const documentNodeQueryStarredRepoList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'StarredRepoList'),
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
                        name: NameNode(value: 'RepositoryItem'),
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
  fragmentDefinitionRepositoryItem,
  fragmentDefinitionTopicItem,
  fragmentDefinitionLanguageItem,
]);
Query$StarredRepoList _parserFn$Query$StarredRepoList(
        Map<String, dynamic> data) =>
    Query$StarredRepoList.fromJson(data);
typedef OnQueryComplete$Query$StarredRepoList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$StarredRepoList?,
);

class Options$Query$StarredRepoList
    extends graphql.QueryOptions<Query$StarredRepoList> {
  Options$Query$StarredRepoList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StarredRepoList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StarredRepoList? onComplete,
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
                    data == null ? null : _parserFn$Query$StarredRepoList(data),
                  ),
          onError: onError,
          document: documentNodeQueryStarredRepoList,
          parserFn: _parserFn$Query$StarredRepoList,
        );

  final OnQueryComplete$Query$StarredRepoList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$StarredRepoList
    extends graphql.WatchQueryOptions<Query$StarredRepoList> {
  WatchOptions$Query$StarredRepoList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StarredRepoList? typedOptimisticResult,
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
          document: documentNodeQueryStarredRepoList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$StarredRepoList,
        );
}

class FetchMoreOptions$Query$StarredRepoList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StarredRepoList(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryStarredRepoList,
        );
}

extension ClientExtension$Query$StarredRepoList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StarredRepoList>> query$StarredRepoList(
          [Options$Query$StarredRepoList? options]) async =>
      await this.query(options ?? Options$Query$StarredRepoList());
  graphql.ObservableQuery<Query$StarredRepoList> watchQuery$StarredRepoList(
          [WatchOptions$Query$StarredRepoList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$StarredRepoList());
  void writeQuery$StarredRepoList({
    required Query$StarredRepoList data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryStarredRepoList)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$StarredRepoList? readQuery$StarredRepoList({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryStarredRepoList)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$StarredRepoList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StarredRepoList> useQuery$StarredRepoList(
        [Options$Query$StarredRepoList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$StarredRepoList());
graphql.ObservableQuery<Query$StarredRepoList> useWatchQuery$StarredRepoList(
        [WatchOptions$Query$StarredRepoList? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$StarredRepoList());

class Query$StarredRepoList$Widget
    extends graphql_flutter.Query<Query$StarredRepoList> {
  Query$StarredRepoList$Widget({
    widgets.Key? key,
    Options$Query$StarredRepoList? options,
    required graphql_flutter.QueryBuilder<Query$StarredRepoList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$StarredRepoList(),
          builder: builder,
        );
}

class Query$StarredRepoList$viewer {
  Query$StarredRepoList$viewer({
    required this.starredRepositories,
    this.$__typename = 'User',
  });

  factory Query$StarredRepoList$viewer.fromJson(Map<String, dynamic> json) {
    final l$starredRepositories = json['starredRepositories'];
    final l$$__typename = json['__typename'];
    return Query$StarredRepoList$viewer(
      starredRepositories:
          Query$StarredRepoList$viewer$starredRepositories.fromJson(
              (l$starredRepositories as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StarredRepoList$viewer$starredRepositories starredRepositories;

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
    if (!(other is Query$StarredRepoList$viewer) ||
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

extension UtilityExtension$Query$StarredRepoList$viewer
    on Query$StarredRepoList$viewer {
  CopyWith$Query$StarredRepoList$viewer<Query$StarredRepoList$viewer>
      get copyWith => CopyWith$Query$StarredRepoList$viewer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StarredRepoList$viewer<TRes> {
  factory CopyWith$Query$StarredRepoList$viewer(
    Query$StarredRepoList$viewer instance,
    TRes Function(Query$StarredRepoList$viewer) then,
  ) = _CopyWithImpl$Query$StarredRepoList$viewer;

  factory CopyWith$Query$StarredRepoList$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$StarredRepoList$viewer;

  TRes call({
    Query$StarredRepoList$viewer$starredRepositories? starredRepositories,
    String? $__typename,
  });
  CopyWith$Query$StarredRepoList$viewer$starredRepositories<TRes>
      get starredRepositories;
}

class _CopyWithImpl$Query$StarredRepoList$viewer<TRes>
    implements CopyWith$Query$StarredRepoList$viewer<TRes> {
  _CopyWithImpl$Query$StarredRepoList$viewer(
    this._instance,
    this._then,
  );

  final Query$StarredRepoList$viewer _instance;

  final TRes Function(Query$StarredRepoList$viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? starredRepositories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StarredRepoList$viewer(
        starredRepositories:
            starredRepositories == _undefined || starredRepositories == null
                ? _instance.starredRepositories
                : (starredRepositories
                    as Query$StarredRepoList$viewer$starredRepositories),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StarredRepoList$viewer$starredRepositories<TRes>
      get starredRepositories {
    final local$starredRepositories = _instance.starredRepositories;
    return CopyWith$Query$StarredRepoList$viewer$starredRepositories(
        local$starredRepositories, (e) => call(starredRepositories: e));
  }
}

class _CopyWithStubImpl$Query$StarredRepoList$viewer<TRes>
    implements CopyWith$Query$StarredRepoList$viewer<TRes> {
  _CopyWithStubImpl$Query$StarredRepoList$viewer(this._res);

  TRes _res;

  call({
    Query$StarredRepoList$viewer$starredRepositories? starredRepositories,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StarredRepoList$viewer$starredRepositories<TRes>
      get starredRepositories =>
          CopyWith$Query$StarredRepoList$viewer$starredRepositories.stub(_res);
}

class Query$StarredRepoList$viewer$starredRepositories {
  Query$StarredRepoList$viewer$starredRepositories({
    this.edges,
    this.$__typename = 'StarredRepositoryConnection',
  });

  factory Query$StarredRepoList$viewer$starredRepositories.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$StarredRepoList$viewer$starredRepositories(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$StarredRepoList$viewer$starredRepositories$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$StarredRepoList$viewer$starredRepositories$edges?>? edges;

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
    if (!(other is Query$StarredRepoList$viewer$starredRepositories) ||
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

extension UtilityExtension$Query$StarredRepoList$viewer$starredRepositories
    on Query$StarredRepoList$viewer$starredRepositories {
  CopyWith$Query$StarredRepoList$viewer$starredRepositories<
          Query$StarredRepoList$viewer$starredRepositories>
      get copyWith => CopyWith$Query$StarredRepoList$viewer$starredRepositories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StarredRepoList$viewer$starredRepositories<TRes> {
  factory CopyWith$Query$StarredRepoList$viewer$starredRepositories(
    Query$StarredRepoList$viewer$starredRepositories instance,
    TRes Function(Query$StarredRepoList$viewer$starredRepositories) then,
  ) = _CopyWithImpl$Query$StarredRepoList$viewer$starredRepositories;

  factory CopyWith$Query$StarredRepoList$viewer$starredRepositories.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StarredRepoList$viewer$starredRepositories;

  TRes call({
    List<Query$StarredRepoList$viewer$starredRepositories$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$StarredRepoList$viewer$starredRepositories$edges?>? Function(
              Iterable<
                  CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges<
                      Query$StarredRepoList$viewer$starredRepositories$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$StarredRepoList$viewer$starredRepositories<TRes>
    implements CopyWith$Query$StarredRepoList$viewer$starredRepositories<TRes> {
  _CopyWithImpl$Query$StarredRepoList$viewer$starredRepositories(
    this._instance,
    this._then,
  );

  final Query$StarredRepoList$viewer$starredRepositories _instance;

  final TRes Function(Query$StarredRepoList$viewer$starredRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StarredRepoList$viewer$starredRepositories(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<
                Query$StarredRepoList$viewer$starredRepositories$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$StarredRepoList$viewer$starredRepositories$edges?>? Function(
                  Iterable<
                      CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges<
                          Query$StarredRepoList$viewer$starredRepositories$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$StarredRepoList$viewer$starredRepositories<TRes>
    implements CopyWith$Query$StarredRepoList$viewer$starredRepositories<TRes> {
  _CopyWithStubImpl$Query$StarredRepoList$viewer$starredRepositories(this._res);

  TRes _res;

  call({
    List<Query$StarredRepoList$viewer$starredRepositories$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$StarredRepoList$viewer$starredRepositories$edges {
  Query$StarredRepoList$viewer$starredRepositories$edges({
    required this.node,
    this.$__typename = 'StarredRepositoryEdge',
  });

  factory Query$StarredRepoList$viewer$starredRepositories$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$StarredRepoList$viewer$starredRepositories$edges(
      node: Fragment$RepositoryItem.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$RepositoryItem node;

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
    if (!(other is Query$StarredRepoList$viewer$starredRepositories$edges) ||
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

extension UtilityExtension$Query$StarredRepoList$viewer$starredRepositories$edges
    on Query$StarredRepoList$viewer$starredRepositories$edges {
  CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges<
          Query$StarredRepoList$viewer$starredRepositories$edges>
      get copyWith =>
          CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges<
    TRes> {
  factory CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges(
    Query$StarredRepoList$viewer$starredRepositories$edges instance,
    TRes Function(Query$StarredRepoList$viewer$starredRepositories$edges) then,
  ) = _CopyWithImpl$Query$StarredRepoList$viewer$starredRepositories$edges;

  factory CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StarredRepoList$viewer$starredRepositories$edges;

  TRes call({
    Fragment$RepositoryItem? node,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryItem<TRes> get node;
}

class _CopyWithImpl$Query$StarredRepoList$viewer$starredRepositories$edges<TRes>
    implements
        CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges<TRes> {
  _CopyWithImpl$Query$StarredRepoList$viewer$starredRepositories$edges(
    this._instance,
    this._then,
  );

  final Query$StarredRepoList$viewer$starredRepositories$edges _instance;

  final TRes Function(Query$StarredRepoList$viewer$starredRepositories$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StarredRepoList$viewer$starredRepositories$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$RepositoryItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryItem<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$RepositoryItem(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$StarredRepoList$viewer$starredRepositories$edges<
        TRes>
    implements
        CopyWith$Query$StarredRepoList$viewer$starredRepositories$edges<TRes> {
  _CopyWithStubImpl$Query$StarredRepoList$viewer$starredRepositories$edges(
      this._res);

  TRes _res;

  call({
    Fragment$RepositoryItem? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryItem<TRes> get node =>
      CopyWith$Fragment$RepositoryItem.stub(_res);
}
