import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'repository_list_query.graphql.dart';
import 'schema.docs.graphql.dart';

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
          : Fragment$RepositoryItem.fromJson(
              (l$repository as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$RepositoryItem? repository;

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
    Fragment$RepositoryItem? repository,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryItem<TRes> get repository;
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
            : (repository as Fragment$RepositoryItem?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryItem<TRes> get repository {
    final local$repository = _instance.repository;
    return local$repository == null
        ? CopyWith$Fragment$RepositoryItem.stub(_then(_instance))
        : CopyWith$Fragment$RepositoryItem(
            local$repository, (e) => call(repository: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryDetail<TRes>
    implements CopyWith$Query$RepositoryDetail<TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail(this._res);

  TRes _res;

  call({
    Fragment$RepositoryItem? repository,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryItem<TRes> get repository =>
      CopyWith$Fragment$RepositoryItem.stub(_res);
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
  fragmentDefinitionRepositoryItem,
  fragmentDefinitionTopicItem,
  fragmentDefinitionLanguageItem,
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

class Variables$Mutation$Star {
  factory Variables$Mutation$Star({required Input$AddStarInput input}) =>
      Variables$Mutation$Star._({
        r'input': input,
      });

  Variables$Mutation$Star._(this._$data);

  factory Variables$Mutation$Star.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$AddStarInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$Star._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddStarInput get input => (_$data['input'] as Input$AddStarInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Star<Variables$Mutation$Star> get copyWith =>
      CopyWith$Variables$Mutation$Star(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Star) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$Star<TRes> {
  factory CopyWith$Variables$Mutation$Star(
    Variables$Mutation$Star instance,
    TRes Function(Variables$Mutation$Star) then,
  ) = _CopyWithImpl$Variables$Mutation$Star;

  factory CopyWith$Variables$Mutation$Star.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Star;

  TRes call({Input$AddStarInput? input});
}

class _CopyWithImpl$Variables$Mutation$Star<TRes>
    implements CopyWith$Variables$Mutation$Star<TRes> {
  _CopyWithImpl$Variables$Mutation$Star(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Star _instance;

  final TRes Function(Variables$Mutation$Star) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(Variables$Mutation$Star._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$AddStarInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Star<TRes>
    implements CopyWith$Variables$Mutation$Star<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Star(this._res);

  TRes _res;

  call({Input$AddStarInput? input}) => _res;
}

class Mutation$Star {
  Mutation$Star({
    this.addStar,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Star.fromJson(Map<String, dynamic> json) {
    final l$addStar = json['addStar'];
    final l$$__typename = json['__typename'];
    return Mutation$Star(
      addStar: l$addStar == null
          ? null
          : Mutation$Star$addStar.fromJson((l$addStar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Star$addStar? addStar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addStar = addStar;
    _resultData['addStar'] = l$addStar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addStar = addStar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addStar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Star) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addStar = addStar;
    final lOther$addStar = other.addStar;
    if (l$addStar != lOther$addStar) {
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

extension UtilityExtension$Mutation$Star on Mutation$Star {
  CopyWith$Mutation$Star<Mutation$Star> get copyWith => CopyWith$Mutation$Star(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Star<TRes> {
  factory CopyWith$Mutation$Star(
    Mutation$Star instance,
    TRes Function(Mutation$Star) then,
  ) = _CopyWithImpl$Mutation$Star;

  factory CopyWith$Mutation$Star.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Star;

  TRes call({
    Mutation$Star$addStar? addStar,
    String? $__typename,
  });
  CopyWith$Mutation$Star$addStar<TRes> get addStar;
}

class _CopyWithImpl$Mutation$Star<TRes>
    implements CopyWith$Mutation$Star<TRes> {
  _CopyWithImpl$Mutation$Star(
    this._instance,
    this._then,
  );

  final Mutation$Star _instance;

  final TRes Function(Mutation$Star) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addStar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Star(
        addStar: addStar == _undefined
            ? _instance.addStar
            : (addStar as Mutation$Star$addStar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Star$addStar<TRes> get addStar {
    final local$addStar = _instance.addStar;
    return local$addStar == null
        ? CopyWith$Mutation$Star$addStar.stub(_then(_instance))
        : CopyWith$Mutation$Star$addStar(
            local$addStar, (e) => call(addStar: e));
  }
}

class _CopyWithStubImpl$Mutation$Star<TRes>
    implements CopyWith$Mutation$Star<TRes> {
  _CopyWithStubImpl$Mutation$Star(this._res);

  TRes _res;

  call({
    Mutation$Star$addStar? addStar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Star$addStar<TRes> get addStar =>
      CopyWith$Mutation$Star$addStar.stub(_res);
}

const documentNodeMutationStar = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Star'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AddStarInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addStar'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'starrable'),
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
  fragmentDefinitionRepositoryItem,
  fragmentDefinitionTopicItem,
  fragmentDefinitionLanguageItem,
]);
Mutation$Star _parserFn$Mutation$Star(Map<String, dynamic> data) =>
    Mutation$Star.fromJson(data);
typedef OnMutationCompleted$Mutation$Star = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Star?,
);

class Options$Mutation$Star extends graphql.MutationOptions<Mutation$Star> {
  Options$Mutation$Star({
    String? operationName,
    required Variables$Mutation$Star variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Star? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Star? onCompleted,
    graphql.OnMutationUpdate<Mutation$Star>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Star(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationStar,
          parserFn: _parserFn$Mutation$Star,
        );

  final OnMutationCompleted$Mutation$Star? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Star
    extends graphql.WatchQueryOptions<Mutation$Star> {
  WatchOptions$Mutation$Star({
    String? operationName,
    required Variables$Mutation$Star variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Star? typedOptimisticResult,
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
          document: documentNodeMutationStar,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Star,
        );
}

extension ClientExtension$Mutation$Star on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Star>> mutate$Star(
          Options$Mutation$Star options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Star> watchMutation$Star(
          WatchOptions$Mutation$Star options) =>
      this.watchMutation(options);
}

class Mutation$Star$HookResult {
  Mutation$Star$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Star runMutation;

  final graphql.QueryResult<Mutation$Star> result;
}

Mutation$Star$HookResult useMutation$Star(
    [WidgetOptions$Mutation$Star? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Star());
  return Mutation$Star$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Star> useWatchMutation$Star(
        WatchOptions$Mutation$Star options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Star
    extends graphql.MutationOptions<Mutation$Star> {
  WidgetOptions$Mutation$Star({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Star? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Star? onCompleted,
    graphql.OnMutationUpdate<Mutation$Star>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Star(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationStar,
          parserFn: _parserFn$Mutation$Star,
        );

  final OnMutationCompleted$Mutation$Star? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Star = graphql.MultiSourceResult<Mutation$Star>
    Function(
  Variables$Mutation$Star, {
  Object? optimisticResult,
  Mutation$Star? typedOptimisticResult,
});
typedef Builder$Mutation$Star = widgets.Widget Function(
  RunMutation$Mutation$Star,
  graphql.QueryResult<Mutation$Star>?,
);

class Mutation$Star$Widget extends graphql_flutter.Mutation<Mutation$Star> {
  Mutation$Star$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Star? options,
    required Builder$Mutation$Star builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Star(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$Star$addStar {
  Mutation$Star$addStar({
    this.starrable,
    this.$__typename = 'AddStarPayload',
  });

  factory Mutation$Star$addStar.fromJson(Map<String, dynamic> json) {
    final l$starrable = json['starrable'];
    final l$$__typename = json['__typename'];
    return Mutation$Star$addStar(
      starrable: l$starrable == null
          ? null
          : Mutation$Star$addStar$starrable.fromJson(
              (l$starrable as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Star$addStar$starrable? starrable;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$starrable = starrable;
    _resultData['starrable'] = l$starrable?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$starrable = starrable;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$starrable,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Star$addStar) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$starrable = starrable;
    final lOther$starrable = other.starrable;
    if (l$starrable != lOther$starrable) {
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

extension UtilityExtension$Mutation$Star$addStar on Mutation$Star$addStar {
  CopyWith$Mutation$Star$addStar<Mutation$Star$addStar> get copyWith =>
      CopyWith$Mutation$Star$addStar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Star$addStar<TRes> {
  factory CopyWith$Mutation$Star$addStar(
    Mutation$Star$addStar instance,
    TRes Function(Mutation$Star$addStar) then,
  ) = _CopyWithImpl$Mutation$Star$addStar;

  factory CopyWith$Mutation$Star$addStar.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Star$addStar;

  TRes call({
    Mutation$Star$addStar$starrable? starrable,
    String? $__typename,
  });
  CopyWith$Mutation$Star$addStar$starrable<TRes> get starrable;
}

class _CopyWithImpl$Mutation$Star$addStar<TRes>
    implements CopyWith$Mutation$Star$addStar<TRes> {
  _CopyWithImpl$Mutation$Star$addStar(
    this._instance,
    this._then,
  );

  final Mutation$Star$addStar _instance;

  final TRes Function(Mutation$Star$addStar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? starrable = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Star$addStar(
        starrable: starrable == _undefined
            ? _instance.starrable
            : (starrable as Mutation$Star$addStar$starrable?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Star$addStar$starrable<TRes> get starrable {
    final local$starrable = _instance.starrable;
    return local$starrable == null
        ? CopyWith$Mutation$Star$addStar$starrable.stub(_then(_instance))
        : CopyWith$Mutation$Star$addStar$starrable(
            local$starrable, (e) => call(starrable: e));
  }
}

class _CopyWithStubImpl$Mutation$Star$addStar<TRes>
    implements CopyWith$Mutation$Star$addStar<TRes> {
  _CopyWithStubImpl$Mutation$Star$addStar(this._res);

  TRes _res;

  call({
    Mutation$Star$addStar$starrable? starrable,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Star$addStar$starrable<TRes> get starrable =>
      CopyWith$Mutation$Star$addStar$starrable.stub(_res);
}

class Mutation$Star$addStar$starrable {
  Mutation$Star$addStar$starrable({required this.$__typename});

  factory Mutation$Star$addStar$starrable.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Gist":
        return Mutation$Star$addStar$starrable$$Gist.fromJson(json);

      case "Repository":
        return Mutation$Star$addStar$starrable$$Repository.fromJson(json);

      case "Topic":
        return Mutation$Star$addStar$starrable$$Topic.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$Star$addStar$starrable(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Star$addStar$starrable) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Star$addStar$starrable
    on Mutation$Star$addStar$starrable {
  CopyWith$Mutation$Star$addStar$starrable<Mutation$Star$addStar$starrable>
      get copyWith => CopyWith$Mutation$Star$addStar$starrable(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$Star$addStar$starrable$$Gist) gist,
    required _T Function(Mutation$Star$addStar$starrable$$Repository)
        repository,
    required _T Function(Mutation$Star$addStar$starrable$$Topic) topic,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Gist":
        return gist(this as Mutation$Star$addStar$starrable$$Gist);

      case "Repository":
        return repository(this as Mutation$Star$addStar$starrable$$Repository);

      case "Topic":
        return topic(this as Mutation$Star$addStar$starrable$$Topic);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$Star$addStar$starrable$$Gist)? gist,
    _T Function(Mutation$Star$addStar$starrable$$Repository)? repository,
    _T Function(Mutation$Star$addStar$starrable$$Topic)? topic,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Gist":
        if (gist != null) {
          return gist(this as Mutation$Star$addStar$starrable$$Gist);
        } else {
          return orElse();
        }

      case "Repository":
        if (repository != null) {
          return repository(
              this as Mutation$Star$addStar$starrable$$Repository);
        } else {
          return orElse();
        }

      case "Topic":
        if (topic != null) {
          return topic(this as Mutation$Star$addStar$starrable$$Topic);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$Star$addStar$starrable<TRes> {
  factory CopyWith$Mutation$Star$addStar$starrable(
    Mutation$Star$addStar$starrable instance,
    TRes Function(Mutation$Star$addStar$starrable) then,
  ) = _CopyWithImpl$Mutation$Star$addStar$starrable;

  factory CopyWith$Mutation$Star$addStar$starrable.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Star$addStar$starrable;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Star$addStar$starrable<TRes>
    implements CopyWith$Mutation$Star$addStar$starrable<TRes> {
  _CopyWithImpl$Mutation$Star$addStar$starrable(
    this._instance,
    this._then,
  );

  final Mutation$Star$addStar$starrable _instance;

  final TRes Function(Mutation$Star$addStar$starrable) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$Star$addStar$starrable(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Star$addStar$starrable<TRes>
    implements CopyWith$Mutation$Star$addStar$starrable<TRes> {
  _CopyWithStubImpl$Mutation$Star$addStar$starrable(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$Star$addStar$starrable$$Gist
    implements Mutation$Star$addStar$starrable {
  Mutation$Star$addStar$starrable$$Gist({this.$__typename = 'Gist'});

  factory Mutation$Star$addStar$starrable$$Gist.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$Star$addStar$starrable$$Gist(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Star$addStar$starrable$$Gist) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Star$addStar$starrable$$Gist
    on Mutation$Star$addStar$starrable$$Gist {
  CopyWith$Mutation$Star$addStar$starrable$$Gist<
          Mutation$Star$addStar$starrable$$Gist>
      get copyWith => CopyWith$Mutation$Star$addStar$starrable$$Gist(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Star$addStar$starrable$$Gist<TRes> {
  factory CopyWith$Mutation$Star$addStar$starrable$$Gist(
    Mutation$Star$addStar$starrable$$Gist instance,
    TRes Function(Mutation$Star$addStar$starrable$$Gist) then,
  ) = _CopyWithImpl$Mutation$Star$addStar$starrable$$Gist;

  factory CopyWith$Mutation$Star$addStar$starrable$$Gist.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Gist;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Star$addStar$starrable$$Gist<TRes>
    implements CopyWith$Mutation$Star$addStar$starrable$$Gist<TRes> {
  _CopyWithImpl$Mutation$Star$addStar$starrable$$Gist(
    this._instance,
    this._then,
  );

  final Mutation$Star$addStar$starrable$$Gist _instance;

  final TRes Function(Mutation$Star$addStar$starrable$$Gist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$Star$addStar$starrable$$Gist(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Gist<TRes>
    implements CopyWith$Mutation$Star$addStar$starrable$$Gist<TRes> {
  _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Gist(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$Star$addStar$starrable$$Repository
    implements Fragment$RepositoryItem, Mutation$Star$addStar$starrable {
  Mutation$Star$addStar$starrable$$Repository({
    required this.id,
    required this.nameWithOwner,
    this.description,
    required this.stargazerCount,
    required this.viewerHasStarred,
    required this.repositoryTopics,
    this.primaryLanguage,
    this.$__typename = 'Repository',
  });

  factory Mutation$Star$addStar$starrable$$Repository.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$nameWithOwner = json['nameWithOwner'];
    final l$description = json['description'];
    final l$stargazerCount = json['stargazerCount'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$repositoryTopics = json['repositoryTopics'];
    final l$primaryLanguage = json['primaryLanguage'];
    final l$$__typename = json['__typename'];
    return Mutation$Star$addStar$starrable$$Repository(
      id: (l$id as String),
      nameWithOwner: (l$nameWithOwner as String),
      description: (l$description as String?),
      stargazerCount: (l$stargazerCount as int),
      viewerHasStarred: (l$viewerHasStarred as bool),
      repositoryTopics: Fragment$RepositoryItem$repositoryTopics.fromJson(
          (l$repositoryTopics as Map<String, dynamic>)),
      primaryLanguage: l$primaryLanguage == null
          ? null
          : Fragment$LanguageItem.fromJson(
              (l$primaryLanguage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String nameWithOwner;

  final String? description;

  final int stargazerCount;

  final bool viewerHasStarred;

  final Fragment$RepositoryItem$repositoryTopics repositoryTopics;

  final Fragment$LanguageItem? primaryLanguage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nameWithOwner = nameWithOwner;
    _resultData['nameWithOwner'] = l$nameWithOwner;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$stargazerCount = stargazerCount;
    _resultData['stargazerCount'] = l$stargazerCount;
    final l$viewerHasStarred = viewerHasStarred;
    _resultData['viewerHasStarred'] = l$viewerHasStarred;
    final l$repositoryTopics = repositoryTopics;
    _resultData['repositoryTopics'] = l$repositoryTopics.toJson();
    final l$primaryLanguage = primaryLanguage;
    _resultData['primaryLanguage'] = l$primaryLanguage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nameWithOwner = nameWithOwner;
    final l$description = description;
    final l$stargazerCount = stargazerCount;
    final l$viewerHasStarred = viewerHasStarred;
    final l$repositoryTopics = repositoryTopics;
    final l$primaryLanguage = primaryLanguage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$nameWithOwner,
      l$description,
      l$stargazerCount,
      l$viewerHasStarred,
      l$repositoryTopics,
      l$primaryLanguage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Star$addStar$starrable$$Repository) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nameWithOwner = nameWithOwner;
    final lOther$nameWithOwner = other.nameWithOwner;
    if (l$nameWithOwner != lOther$nameWithOwner) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$stargazerCount = stargazerCount;
    final lOther$stargazerCount = other.stargazerCount;
    if (l$stargazerCount != lOther$stargazerCount) {
      return false;
    }
    final l$viewerHasStarred = viewerHasStarred;
    final lOther$viewerHasStarred = other.viewerHasStarred;
    if (l$viewerHasStarred != lOther$viewerHasStarred) {
      return false;
    }
    final l$repositoryTopics = repositoryTopics;
    final lOther$repositoryTopics = other.repositoryTopics;
    if (l$repositoryTopics != lOther$repositoryTopics) {
      return false;
    }
    final l$primaryLanguage = primaryLanguage;
    final lOther$primaryLanguage = other.primaryLanguage;
    if (l$primaryLanguage != lOther$primaryLanguage) {
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

extension UtilityExtension$Mutation$Star$addStar$starrable$$Repository
    on Mutation$Star$addStar$starrable$$Repository {
  CopyWith$Mutation$Star$addStar$starrable$$Repository<
          Mutation$Star$addStar$starrable$$Repository>
      get copyWith => CopyWith$Mutation$Star$addStar$starrable$$Repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Star$addStar$starrable$$Repository<TRes> {
  factory CopyWith$Mutation$Star$addStar$starrable$$Repository(
    Mutation$Star$addStar$starrable$$Repository instance,
    TRes Function(Mutation$Star$addStar$starrable$$Repository) then,
  ) = _CopyWithImpl$Mutation$Star$addStar$starrable$$Repository;

  factory CopyWith$Mutation$Star$addStar$starrable$$Repository.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Repository;

  TRes call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Fragment$RepositoryItem$repositoryTopics? repositoryTopics,
    Fragment$LanguageItem? primaryLanguage,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes> get repositoryTopics;
  CopyWith$Fragment$LanguageItem<TRes> get primaryLanguage;
}

class _CopyWithImpl$Mutation$Star$addStar$starrable$$Repository<TRes>
    implements CopyWith$Mutation$Star$addStar$starrable$$Repository<TRes> {
  _CopyWithImpl$Mutation$Star$addStar$starrable$$Repository(
    this._instance,
    this._then,
  );

  final Mutation$Star$addStar$starrable$$Repository _instance;

  final TRes Function(Mutation$Star$addStar$starrable$$Repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? nameWithOwner = _undefined,
    Object? description = _undefined,
    Object? stargazerCount = _undefined,
    Object? viewerHasStarred = _undefined,
    Object? repositoryTopics = _undefined,
    Object? primaryLanguage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Star$addStar$starrable$$Repository(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        nameWithOwner: nameWithOwner == _undefined || nameWithOwner == null
            ? _instance.nameWithOwner
            : (nameWithOwner as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        stargazerCount: stargazerCount == _undefined || stargazerCount == null
            ? _instance.stargazerCount
            : (stargazerCount as int),
        viewerHasStarred:
            viewerHasStarred == _undefined || viewerHasStarred == null
                ? _instance.viewerHasStarred
                : (viewerHasStarred as bool),
        repositoryTopics: repositoryTopics == _undefined ||
                repositoryTopics == null
            ? _instance.repositoryTopics
            : (repositoryTopics as Fragment$RepositoryItem$repositoryTopics),
        primaryLanguage: primaryLanguage == _undefined
            ? _instance.primaryLanguage
            : (primaryLanguage as Fragment$LanguageItem?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes> get repositoryTopics {
    final local$repositoryTopics = _instance.repositoryTopics;
    return CopyWith$Fragment$RepositoryItem$repositoryTopics(
        local$repositoryTopics, (e) => call(repositoryTopics: e));
  }

  CopyWith$Fragment$LanguageItem<TRes> get primaryLanguage {
    final local$primaryLanguage = _instance.primaryLanguage;
    return local$primaryLanguage == null
        ? CopyWith$Fragment$LanguageItem.stub(_then(_instance))
        : CopyWith$Fragment$LanguageItem(
            local$primaryLanguage, (e) => call(primaryLanguage: e));
  }
}

class _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Repository<TRes>
    implements CopyWith$Mutation$Star$addStar$starrable$$Repository<TRes> {
  _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Repository(this._res);

  TRes _res;

  call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Fragment$RepositoryItem$repositoryTopics? repositoryTopics,
    Fragment$LanguageItem? primaryLanguage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes>
      get repositoryTopics =>
          CopyWith$Fragment$RepositoryItem$repositoryTopics.stub(_res);

  CopyWith$Fragment$LanguageItem<TRes> get primaryLanguage =>
      CopyWith$Fragment$LanguageItem.stub(_res);
}

class Mutation$Star$addStar$starrable$$Topic
    implements Mutation$Star$addStar$starrable {
  Mutation$Star$addStar$starrable$$Topic({this.$__typename = 'Topic'});

  factory Mutation$Star$addStar$starrable$$Topic.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$Star$addStar$starrable$$Topic(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Star$addStar$starrable$$Topic) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Star$addStar$starrable$$Topic
    on Mutation$Star$addStar$starrable$$Topic {
  CopyWith$Mutation$Star$addStar$starrable$$Topic<
          Mutation$Star$addStar$starrable$$Topic>
      get copyWith => CopyWith$Mutation$Star$addStar$starrable$$Topic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Star$addStar$starrable$$Topic<TRes> {
  factory CopyWith$Mutation$Star$addStar$starrable$$Topic(
    Mutation$Star$addStar$starrable$$Topic instance,
    TRes Function(Mutation$Star$addStar$starrable$$Topic) then,
  ) = _CopyWithImpl$Mutation$Star$addStar$starrable$$Topic;

  factory CopyWith$Mutation$Star$addStar$starrable$$Topic.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Topic;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Star$addStar$starrable$$Topic<TRes>
    implements CopyWith$Mutation$Star$addStar$starrable$$Topic<TRes> {
  _CopyWithImpl$Mutation$Star$addStar$starrable$$Topic(
    this._instance,
    this._then,
  );

  final Mutation$Star$addStar$starrable$$Topic _instance;

  final TRes Function(Mutation$Star$addStar$starrable$$Topic) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$Star$addStar$starrable$$Topic(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Topic<TRes>
    implements CopyWith$Mutation$Star$addStar$starrable$$Topic<TRes> {
  _CopyWithStubImpl$Mutation$Star$addStar$starrable$$Topic(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Variables$Mutation$Unstar {
  factory Variables$Mutation$Unstar({required Input$RemoveStarInput input}) =>
      Variables$Mutation$Unstar._({
        r'input': input,
      });

  Variables$Mutation$Unstar._(this._$data);

  factory Variables$Mutation$Unstar.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$RemoveStarInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$Unstar._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RemoveStarInput get input => (_$data['input'] as Input$RemoveStarInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$Unstar<Variables$Mutation$Unstar> get copyWith =>
      CopyWith$Variables$Mutation$Unstar(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Unstar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$Unstar<TRes> {
  factory CopyWith$Variables$Mutation$Unstar(
    Variables$Mutation$Unstar instance,
    TRes Function(Variables$Mutation$Unstar) then,
  ) = _CopyWithImpl$Variables$Mutation$Unstar;

  factory CopyWith$Variables$Mutation$Unstar.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Unstar;

  TRes call({Input$RemoveStarInput? input});
}

class _CopyWithImpl$Variables$Mutation$Unstar<TRes>
    implements CopyWith$Variables$Mutation$Unstar<TRes> {
  _CopyWithImpl$Variables$Mutation$Unstar(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Unstar _instance;

  final TRes Function(Variables$Mutation$Unstar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(Variables$Mutation$Unstar._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$RemoveStarInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Unstar<TRes>
    implements CopyWith$Variables$Mutation$Unstar<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Unstar(this._res);

  TRes _res;

  call({Input$RemoveStarInput? input}) => _res;
}

class Mutation$Unstar {
  Mutation$Unstar({
    this.removeStar,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Unstar.fromJson(Map<String, dynamic> json) {
    final l$removeStar = json['removeStar'];
    final l$$__typename = json['__typename'];
    return Mutation$Unstar(
      removeStar: l$removeStar == null
          ? null
          : Mutation$Unstar$removeStar.fromJson(
              (l$removeStar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Unstar$removeStar? removeStar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$removeStar = removeStar;
    _resultData['removeStar'] = l$removeStar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$removeStar = removeStar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$removeStar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Unstar) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$removeStar = removeStar;
    final lOther$removeStar = other.removeStar;
    if (l$removeStar != lOther$removeStar) {
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

extension UtilityExtension$Mutation$Unstar on Mutation$Unstar {
  CopyWith$Mutation$Unstar<Mutation$Unstar> get copyWith =>
      CopyWith$Mutation$Unstar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Unstar<TRes> {
  factory CopyWith$Mutation$Unstar(
    Mutation$Unstar instance,
    TRes Function(Mutation$Unstar) then,
  ) = _CopyWithImpl$Mutation$Unstar;

  factory CopyWith$Mutation$Unstar.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Unstar;

  TRes call({
    Mutation$Unstar$removeStar? removeStar,
    String? $__typename,
  });
  CopyWith$Mutation$Unstar$removeStar<TRes> get removeStar;
}

class _CopyWithImpl$Mutation$Unstar<TRes>
    implements CopyWith$Mutation$Unstar<TRes> {
  _CopyWithImpl$Mutation$Unstar(
    this._instance,
    this._then,
  );

  final Mutation$Unstar _instance;

  final TRes Function(Mutation$Unstar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? removeStar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Unstar(
        removeStar: removeStar == _undefined
            ? _instance.removeStar
            : (removeStar as Mutation$Unstar$removeStar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Unstar$removeStar<TRes> get removeStar {
    final local$removeStar = _instance.removeStar;
    return local$removeStar == null
        ? CopyWith$Mutation$Unstar$removeStar.stub(_then(_instance))
        : CopyWith$Mutation$Unstar$removeStar(
            local$removeStar, (e) => call(removeStar: e));
  }
}

class _CopyWithStubImpl$Mutation$Unstar<TRes>
    implements CopyWith$Mutation$Unstar<TRes> {
  _CopyWithStubImpl$Mutation$Unstar(this._res);

  TRes _res;

  call({
    Mutation$Unstar$removeStar? removeStar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Unstar$removeStar<TRes> get removeStar =>
      CopyWith$Mutation$Unstar$removeStar.stub(_res);
}

const documentNodeMutationUnstar = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Unstar'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'RemoveStarInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'removeStar'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'starrable'),
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
  fragmentDefinitionRepositoryItem,
  fragmentDefinitionTopicItem,
  fragmentDefinitionLanguageItem,
]);
Mutation$Unstar _parserFn$Mutation$Unstar(Map<String, dynamic> data) =>
    Mutation$Unstar.fromJson(data);
typedef OnMutationCompleted$Mutation$Unstar = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Unstar?,
);

class Options$Mutation$Unstar extends graphql.MutationOptions<Mutation$Unstar> {
  Options$Mutation$Unstar({
    String? operationName,
    required Variables$Mutation$Unstar variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Unstar? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Unstar? onCompleted,
    graphql.OnMutationUpdate<Mutation$Unstar>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Unstar(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnstar,
          parserFn: _parserFn$Mutation$Unstar,
        );

  final OnMutationCompleted$Mutation$Unstar? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Unstar
    extends graphql.WatchQueryOptions<Mutation$Unstar> {
  WatchOptions$Mutation$Unstar({
    String? operationName,
    required Variables$Mutation$Unstar variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Unstar? typedOptimisticResult,
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
          document: documentNodeMutationUnstar,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Unstar,
        );
}

extension ClientExtension$Mutation$Unstar on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Unstar>> mutate$Unstar(
          Options$Mutation$Unstar options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Unstar> watchMutation$Unstar(
          WatchOptions$Mutation$Unstar options) =>
      this.watchMutation(options);
}

class Mutation$Unstar$HookResult {
  Mutation$Unstar$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Unstar runMutation;

  final graphql.QueryResult<Mutation$Unstar> result;
}

Mutation$Unstar$HookResult useMutation$Unstar(
    [WidgetOptions$Mutation$Unstar? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Unstar());
  return Mutation$Unstar$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Unstar> useWatchMutation$Unstar(
        WatchOptions$Mutation$Unstar options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Unstar
    extends graphql.MutationOptions<Mutation$Unstar> {
  WidgetOptions$Mutation$Unstar({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Unstar? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Unstar? onCompleted,
    graphql.OnMutationUpdate<Mutation$Unstar>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Unstar(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUnstar,
          parserFn: _parserFn$Mutation$Unstar,
        );

  final OnMutationCompleted$Mutation$Unstar? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Unstar = graphql.MultiSourceResult<Mutation$Unstar>
    Function(
  Variables$Mutation$Unstar, {
  Object? optimisticResult,
  Mutation$Unstar? typedOptimisticResult,
});
typedef Builder$Mutation$Unstar = widgets.Widget Function(
  RunMutation$Mutation$Unstar,
  graphql.QueryResult<Mutation$Unstar>?,
);

class Mutation$Unstar$Widget extends graphql_flutter.Mutation<Mutation$Unstar> {
  Mutation$Unstar$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Unstar? options,
    required Builder$Mutation$Unstar builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Unstar(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$Unstar$removeStar {
  Mutation$Unstar$removeStar({
    this.starrable,
    this.$__typename = 'RemoveStarPayload',
  });

  factory Mutation$Unstar$removeStar.fromJson(Map<String, dynamic> json) {
    final l$starrable = json['starrable'];
    final l$$__typename = json['__typename'];
    return Mutation$Unstar$removeStar(
      starrable: l$starrable == null
          ? null
          : Mutation$Unstar$removeStar$starrable.fromJson(
              (l$starrable as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Unstar$removeStar$starrable? starrable;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$starrable = starrable;
    _resultData['starrable'] = l$starrable?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$starrable = starrable;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$starrable,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Unstar$removeStar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$starrable = starrable;
    final lOther$starrable = other.starrable;
    if (l$starrable != lOther$starrable) {
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

extension UtilityExtension$Mutation$Unstar$removeStar
    on Mutation$Unstar$removeStar {
  CopyWith$Mutation$Unstar$removeStar<Mutation$Unstar$removeStar>
      get copyWith => CopyWith$Mutation$Unstar$removeStar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Unstar$removeStar<TRes> {
  factory CopyWith$Mutation$Unstar$removeStar(
    Mutation$Unstar$removeStar instance,
    TRes Function(Mutation$Unstar$removeStar) then,
  ) = _CopyWithImpl$Mutation$Unstar$removeStar;

  factory CopyWith$Mutation$Unstar$removeStar.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Unstar$removeStar;

  TRes call({
    Mutation$Unstar$removeStar$starrable? starrable,
    String? $__typename,
  });
  CopyWith$Mutation$Unstar$removeStar$starrable<TRes> get starrable;
}

class _CopyWithImpl$Mutation$Unstar$removeStar<TRes>
    implements CopyWith$Mutation$Unstar$removeStar<TRes> {
  _CopyWithImpl$Mutation$Unstar$removeStar(
    this._instance,
    this._then,
  );

  final Mutation$Unstar$removeStar _instance;

  final TRes Function(Mutation$Unstar$removeStar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? starrable = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Unstar$removeStar(
        starrable: starrable == _undefined
            ? _instance.starrable
            : (starrable as Mutation$Unstar$removeStar$starrable?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Unstar$removeStar$starrable<TRes> get starrable {
    final local$starrable = _instance.starrable;
    return local$starrable == null
        ? CopyWith$Mutation$Unstar$removeStar$starrable.stub(_then(_instance))
        : CopyWith$Mutation$Unstar$removeStar$starrable(
            local$starrable, (e) => call(starrable: e));
  }
}

class _CopyWithStubImpl$Mutation$Unstar$removeStar<TRes>
    implements CopyWith$Mutation$Unstar$removeStar<TRes> {
  _CopyWithStubImpl$Mutation$Unstar$removeStar(this._res);

  TRes _res;

  call({
    Mutation$Unstar$removeStar$starrable? starrable,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Unstar$removeStar$starrable<TRes> get starrable =>
      CopyWith$Mutation$Unstar$removeStar$starrable.stub(_res);
}

class Mutation$Unstar$removeStar$starrable {
  Mutation$Unstar$removeStar$starrable({required this.$__typename});

  factory Mutation$Unstar$removeStar$starrable.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Gist":
        return Mutation$Unstar$removeStar$starrable$$Gist.fromJson(json);

      case "Repository":
        return Mutation$Unstar$removeStar$starrable$$Repository.fromJson(json);

      case "Topic":
        return Mutation$Unstar$removeStar$starrable$$Topic.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$Unstar$removeStar$starrable(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Unstar$removeStar$starrable) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Unstar$removeStar$starrable
    on Mutation$Unstar$removeStar$starrable {
  CopyWith$Mutation$Unstar$removeStar$starrable<
          Mutation$Unstar$removeStar$starrable>
      get copyWith => CopyWith$Mutation$Unstar$removeStar$starrable(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Mutation$Unstar$removeStar$starrable$$Gist) gist,
    required _T Function(Mutation$Unstar$removeStar$starrable$$Repository)
        repository,
    required _T Function(Mutation$Unstar$removeStar$starrable$$Topic) topic,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Gist":
        return gist(this as Mutation$Unstar$removeStar$starrable$$Gist);

      case "Repository":
        return repository(
            this as Mutation$Unstar$removeStar$starrable$$Repository);

      case "Topic":
        return topic(this as Mutation$Unstar$removeStar$starrable$$Topic);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$Unstar$removeStar$starrable$$Gist)? gist,
    _T Function(Mutation$Unstar$removeStar$starrable$$Repository)? repository,
    _T Function(Mutation$Unstar$removeStar$starrable$$Topic)? topic,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Gist":
        if (gist != null) {
          return gist(this as Mutation$Unstar$removeStar$starrable$$Gist);
        } else {
          return orElse();
        }

      case "Repository":
        if (repository != null) {
          return repository(
              this as Mutation$Unstar$removeStar$starrable$$Repository);
        } else {
          return orElse();
        }

      case "Topic":
        if (topic != null) {
          return topic(this as Mutation$Unstar$removeStar$starrable$$Topic);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$Unstar$removeStar$starrable<TRes> {
  factory CopyWith$Mutation$Unstar$removeStar$starrable(
    Mutation$Unstar$removeStar$starrable instance,
    TRes Function(Mutation$Unstar$removeStar$starrable) then,
  ) = _CopyWithImpl$Mutation$Unstar$removeStar$starrable;

  factory CopyWith$Mutation$Unstar$removeStar$starrable.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Unstar$removeStar$starrable<TRes>
    implements CopyWith$Mutation$Unstar$removeStar$starrable<TRes> {
  _CopyWithImpl$Mutation$Unstar$removeStar$starrable(
    this._instance,
    this._then,
  );

  final Mutation$Unstar$removeStar$starrable _instance;

  final TRes Function(Mutation$Unstar$removeStar$starrable) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$Unstar$removeStar$starrable(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable<TRes>
    implements CopyWith$Mutation$Unstar$removeStar$starrable<TRes> {
  _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$Unstar$removeStar$starrable$$Gist
    implements Mutation$Unstar$removeStar$starrable {
  Mutation$Unstar$removeStar$starrable$$Gist({this.$__typename = 'Gist'});

  factory Mutation$Unstar$removeStar$starrable$$Gist.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$Unstar$removeStar$starrable$$Gist(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Unstar$removeStar$starrable$$Gist) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Unstar$removeStar$starrable$$Gist
    on Mutation$Unstar$removeStar$starrable$$Gist {
  CopyWith$Mutation$Unstar$removeStar$starrable$$Gist<
          Mutation$Unstar$removeStar$starrable$$Gist>
      get copyWith => CopyWith$Mutation$Unstar$removeStar$starrable$$Gist(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Unstar$removeStar$starrable$$Gist<TRes> {
  factory CopyWith$Mutation$Unstar$removeStar$starrable$$Gist(
    Mutation$Unstar$removeStar$starrable$$Gist instance,
    TRes Function(Mutation$Unstar$removeStar$starrable$$Gist) then,
  ) = _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Gist;

  factory CopyWith$Mutation$Unstar$removeStar$starrable$$Gist.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Gist;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Gist<TRes>
    implements CopyWith$Mutation$Unstar$removeStar$starrable$$Gist<TRes> {
  _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Gist(
    this._instance,
    this._then,
  );

  final Mutation$Unstar$removeStar$starrable$$Gist _instance;

  final TRes Function(Mutation$Unstar$removeStar$starrable$$Gist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$Unstar$removeStar$starrable$$Gist(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Gist<TRes>
    implements CopyWith$Mutation$Unstar$removeStar$starrable$$Gist<TRes> {
  _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Gist(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$Unstar$removeStar$starrable$$Repository
    implements Fragment$RepositoryItem, Mutation$Unstar$removeStar$starrable {
  Mutation$Unstar$removeStar$starrable$$Repository({
    required this.id,
    required this.nameWithOwner,
    this.description,
    required this.stargazerCount,
    required this.viewerHasStarred,
    required this.repositoryTopics,
    this.primaryLanguage,
    this.$__typename = 'Repository',
  });

  factory Mutation$Unstar$removeStar$starrable$$Repository.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$nameWithOwner = json['nameWithOwner'];
    final l$description = json['description'];
    final l$stargazerCount = json['stargazerCount'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$repositoryTopics = json['repositoryTopics'];
    final l$primaryLanguage = json['primaryLanguage'];
    final l$$__typename = json['__typename'];
    return Mutation$Unstar$removeStar$starrable$$Repository(
      id: (l$id as String),
      nameWithOwner: (l$nameWithOwner as String),
      description: (l$description as String?),
      stargazerCount: (l$stargazerCount as int),
      viewerHasStarred: (l$viewerHasStarred as bool),
      repositoryTopics: Fragment$RepositoryItem$repositoryTopics.fromJson(
          (l$repositoryTopics as Map<String, dynamic>)),
      primaryLanguage: l$primaryLanguage == null
          ? null
          : Fragment$LanguageItem.fromJson(
              (l$primaryLanguage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String nameWithOwner;

  final String? description;

  final int stargazerCount;

  final bool viewerHasStarred;

  final Fragment$RepositoryItem$repositoryTopics repositoryTopics;

  final Fragment$LanguageItem? primaryLanguage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nameWithOwner = nameWithOwner;
    _resultData['nameWithOwner'] = l$nameWithOwner;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$stargazerCount = stargazerCount;
    _resultData['stargazerCount'] = l$stargazerCount;
    final l$viewerHasStarred = viewerHasStarred;
    _resultData['viewerHasStarred'] = l$viewerHasStarred;
    final l$repositoryTopics = repositoryTopics;
    _resultData['repositoryTopics'] = l$repositoryTopics.toJson();
    final l$primaryLanguage = primaryLanguage;
    _resultData['primaryLanguage'] = l$primaryLanguage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nameWithOwner = nameWithOwner;
    final l$description = description;
    final l$stargazerCount = stargazerCount;
    final l$viewerHasStarred = viewerHasStarred;
    final l$repositoryTopics = repositoryTopics;
    final l$primaryLanguage = primaryLanguage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$nameWithOwner,
      l$description,
      l$stargazerCount,
      l$viewerHasStarred,
      l$repositoryTopics,
      l$primaryLanguage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Unstar$removeStar$starrable$$Repository) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nameWithOwner = nameWithOwner;
    final lOther$nameWithOwner = other.nameWithOwner;
    if (l$nameWithOwner != lOther$nameWithOwner) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$stargazerCount = stargazerCount;
    final lOther$stargazerCount = other.stargazerCount;
    if (l$stargazerCount != lOther$stargazerCount) {
      return false;
    }
    final l$viewerHasStarred = viewerHasStarred;
    final lOther$viewerHasStarred = other.viewerHasStarred;
    if (l$viewerHasStarred != lOther$viewerHasStarred) {
      return false;
    }
    final l$repositoryTopics = repositoryTopics;
    final lOther$repositoryTopics = other.repositoryTopics;
    if (l$repositoryTopics != lOther$repositoryTopics) {
      return false;
    }
    final l$primaryLanguage = primaryLanguage;
    final lOther$primaryLanguage = other.primaryLanguage;
    if (l$primaryLanguage != lOther$primaryLanguage) {
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

extension UtilityExtension$Mutation$Unstar$removeStar$starrable$$Repository
    on Mutation$Unstar$removeStar$starrable$$Repository {
  CopyWith$Mutation$Unstar$removeStar$starrable$$Repository<
          Mutation$Unstar$removeStar$starrable$$Repository>
      get copyWith => CopyWith$Mutation$Unstar$removeStar$starrable$$Repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Unstar$removeStar$starrable$$Repository<TRes> {
  factory CopyWith$Mutation$Unstar$removeStar$starrable$$Repository(
    Mutation$Unstar$removeStar$starrable$$Repository instance,
    TRes Function(Mutation$Unstar$removeStar$starrable$$Repository) then,
  ) = _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Repository;

  factory CopyWith$Mutation$Unstar$removeStar$starrable$$Repository.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Repository;

  TRes call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Fragment$RepositoryItem$repositoryTopics? repositoryTopics,
    Fragment$LanguageItem? primaryLanguage,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes> get repositoryTopics;
  CopyWith$Fragment$LanguageItem<TRes> get primaryLanguage;
}

class _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Repository<TRes>
    implements CopyWith$Mutation$Unstar$removeStar$starrable$$Repository<TRes> {
  _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Repository(
    this._instance,
    this._then,
  );

  final Mutation$Unstar$removeStar$starrable$$Repository _instance;

  final TRes Function(Mutation$Unstar$removeStar$starrable$$Repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? nameWithOwner = _undefined,
    Object? description = _undefined,
    Object? stargazerCount = _undefined,
    Object? viewerHasStarred = _undefined,
    Object? repositoryTopics = _undefined,
    Object? primaryLanguage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Unstar$removeStar$starrable$$Repository(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        nameWithOwner: nameWithOwner == _undefined || nameWithOwner == null
            ? _instance.nameWithOwner
            : (nameWithOwner as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        stargazerCount: stargazerCount == _undefined || stargazerCount == null
            ? _instance.stargazerCount
            : (stargazerCount as int),
        viewerHasStarred:
            viewerHasStarred == _undefined || viewerHasStarred == null
                ? _instance.viewerHasStarred
                : (viewerHasStarred as bool),
        repositoryTopics: repositoryTopics == _undefined ||
                repositoryTopics == null
            ? _instance.repositoryTopics
            : (repositoryTopics as Fragment$RepositoryItem$repositoryTopics),
        primaryLanguage: primaryLanguage == _undefined
            ? _instance.primaryLanguage
            : (primaryLanguage as Fragment$LanguageItem?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes> get repositoryTopics {
    final local$repositoryTopics = _instance.repositoryTopics;
    return CopyWith$Fragment$RepositoryItem$repositoryTopics(
        local$repositoryTopics, (e) => call(repositoryTopics: e));
  }

  CopyWith$Fragment$LanguageItem<TRes> get primaryLanguage {
    final local$primaryLanguage = _instance.primaryLanguage;
    return local$primaryLanguage == null
        ? CopyWith$Fragment$LanguageItem.stub(_then(_instance))
        : CopyWith$Fragment$LanguageItem(
            local$primaryLanguage, (e) => call(primaryLanguage: e));
  }
}

class _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Repository<TRes>
    implements CopyWith$Mutation$Unstar$removeStar$starrable$$Repository<TRes> {
  _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Repository(this._res);

  TRes _res;

  call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Fragment$RepositoryItem$repositoryTopics? repositoryTopics,
    Fragment$LanguageItem? primaryLanguage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes>
      get repositoryTopics =>
          CopyWith$Fragment$RepositoryItem$repositoryTopics.stub(_res);

  CopyWith$Fragment$LanguageItem<TRes> get primaryLanguage =>
      CopyWith$Fragment$LanguageItem.stub(_res);
}

class Mutation$Unstar$removeStar$starrable$$Topic
    implements Mutation$Unstar$removeStar$starrable {
  Mutation$Unstar$removeStar$starrable$$Topic({this.$__typename = 'Topic'});

  factory Mutation$Unstar$removeStar$starrable$$Topic.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$Unstar$removeStar$starrable$$Topic(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Unstar$removeStar$starrable$$Topic) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$Unstar$removeStar$starrable$$Topic
    on Mutation$Unstar$removeStar$starrable$$Topic {
  CopyWith$Mutation$Unstar$removeStar$starrable$$Topic<
          Mutation$Unstar$removeStar$starrable$$Topic>
      get copyWith => CopyWith$Mutation$Unstar$removeStar$starrable$$Topic(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Unstar$removeStar$starrable$$Topic<TRes> {
  factory CopyWith$Mutation$Unstar$removeStar$starrable$$Topic(
    Mutation$Unstar$removeStar$starrable$$Topic instance,
    TRes Function(Mutation$Unstar$removeStar$starrable$$Topic) then,
  ) = _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Topic;

  factory CopyWith$Mutation$Unstar$removeStar$starrable$$Topic.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Topic;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Topic<TRes>
    implements CopyWith$Mutation$Unstar$removeStar$starrable$$Topic<TRes> {
  _CopyWithImpl$Mutation$Unstar$removeStar$starrable$$Topic(
    this._instance,
    this._then,
  );

  final Mutation$Unstar$removeStar$starrable$$Topic _instance;

  final TRes Function(Mutation$Unstar$removeStar$starrable$$Topic) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$Unstar$removeStar$starrable$$Topic(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Topic<TRes>
    implements CopyWith$Mutation$Unstar$removeStar$starrable$$Topic<TRes> {
  _CopyWithStubImpl$Mutation$Unstar$removeStar$starrable$$Topic(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
