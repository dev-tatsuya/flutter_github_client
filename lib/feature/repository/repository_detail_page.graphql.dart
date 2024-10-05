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
          : Query$RepositoryDetail$repository.fromJson(
              (l$repository as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RepositoryDetail$repository? repository;

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
    Query$RepositoryDetail$repository? repository,
    String? $__typename,
  });
  CopyWith$Query$RepositoryDetail$repository<TRes> get repository;
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
            : (repository as Query$RepositoryDetail$repository?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RepositoryDetail$repository<TRes> get repository {
    final local$repository = _instance.repository;
    return local$repository == null
        ? CopyWith$Query$RepositoryDetail$repository.stub(_then(_instance))
        : CopyWith$Query$RepositoryDetail$repository(
            local$repository, (e) => call(repository: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryDetail<TRes>
    implements CopyWith$Query$RepositoryDetail<TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail(this._res);

  TRes _res;

  call({
    Query$RepositoryDetail$repository? repository,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RepositoryDetail$repository<TRes> get repository =>
      CopyWith$Query$RepositoryDetail$repository.stub(_res);
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
            name: NameNode(value: 'issues'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'totalCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'licenseInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'spdxId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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

class Query$RepositoryDetail$repository implements Fragment$RepositoryData {
  Query$RepositoryDetail$repository({
    required this.id,
    required this.nameWithOwner,
    this.description,
    required this.stargazerCount,
    required this.viewerHasStarred,
    required this.repositoryTopics,
    this.primaryLanguage,
    this.$__typename = 'Repository',
    required this.issues,
    this.licenseInfo,
  });

  factory Query$RepositoryDetail$repository.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$nameWithOwner = json['nameWithOwner'];
    final l$description = json['description'];
    final l$stargazerCount = json['stargazerCount'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$repositoryTopics = json['repositoryTopics'];
    final l$primaryLanguage = json['primaryLanguage'];
    final l$$__typename = json['__typename'];
    final l$issues = json['issues'];
    final l$licenseInfo = json['licenseInfo'];
    return Query$RepositoryDetail$repository(
      id: (l$id as String),
      nameWithOwner: (l$nameWithOwner as String),
      description: (l$description as String?),
      stargazerCount: (l$stargazerCount as int),
      viewerHasStarred: (l$viewerHasStarred as bool),
      repositoryTopics:
          Query$RepositoryDetail$repository$repositoryTopics.fromJson(
              (l$repositoryTopics as Map<String, dynamic>)),
      primaryLanguage: l$primaryLanguage == null
          ? null
          : Fragment$LanguageData.fromJson(
              (l$primaryLanguage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      issues: Query$RepositoryDetail$repository$issues.fromJson(
          (l$issues as Map<String, dynamic>)),
      licenseInfo: l$licenseInfo == null
          ? null
          : Query$RepositoryDetail$repository$licenseInfo.fromJson(
              (l$licenseInfo as Map<String, dynamic>)),
    );
  }

  final String id;

  final String nameWithOwner;

  final String? description;

  final int stargazerCount;

  final bool viewerHasStarred;

  final Query$RepositoryDetail$repository$repositoryTopics repositoryTopics;

  final Fragment$LanguageData? primaryLanguage;

  final String $__typename;

  final Query$RepositoryDetail$repository$issues issues;

  final Query$RepositoryDetail$repository$licenseInfo? licenseInfo;

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
    final l$issues = issues;
    _resultData['issues'] = l$issues.toJson();
    final l$licenseInfo = licenseInfo;
    _resultData['licenseInfo'] = l$licenseInfo?.toJson();
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
    final l$issues = issues;
    final l$licenseInfo = licenseInfo;
    return Object.hashAll([
      l$id,
      l$nameWithOwner,
      l$description,
      l$stargazerCount,
      l$viewerHasStarred,
      l$repositoryTopics,
      l$primaryLanguage,
      l$$__typename,
      l$issues,
      l$licenseInfo,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RepositoryDetail$repository) ||
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
    final l$issues = issues;
    final lOther$issues = other.issues;
    if (l$issues != lOther$issues) {
      return false;
    }
    final l$licenseInfo = licenseInfo;
    final lOther$licenseInfo = other.licenseInfo;
    if (l$licenseInfo != lOther$licenseInfo) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$RepositoryDetail$repository
    on Query$RepositoryDetail$repository {
  CopyWith$Query$RepositoryDetail$repository<Query$RepositoryDetail$repository>
      get copyWith => CopyWith$Query$RepositoryDetail$repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryDetail$repository<TRes> {
  factory CopyWith$Query$RepositoryDetail$repository(
    Query$RepositoryDetail$repository instance,
    TRes Function(Query$RepositoryDetail$repository) then,
  ) = _CopyWithImpl$Query$RepositoryDetail$repository;

  factory CopyWith$Query$RepositoryDetail$repository.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryDetail$repository;

  TRes call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Query$RepositoryDetail$repository$repositoryTopics? repositoryTopics,
    Fragment$LanguageData? primaryLanguage,
    String? $__typename,
    Query$RepositoryDetail$repository$issues? issues,
    Query$RepositoryDetail$repository$licenseInfo? licenseInfo,
  });
  CopyWith$Query$RepositoryDetail$repository$repositoryTopics<TRes>
      get repositoryTopics;
  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage;
  CopyWith$Query$RepositoryDetail$repository$issues<TRes> get issues;
  CopyWith$Query$RepositoryDetail$repository$licenseInfo<TRes> get licenseInfo;
}

class _CopyWithImpl$Query$RepositoryDetail$repository<TRes>
    implements CopyWith$Query$RepositoryDetail$repository<TRes> {
  _CopyWithImpl$Query$RepositoryDetail$repository(
    this._instance,
    this._then,
  );

  final Query$RepositoryDetail$repository _instance;

  final TRes Function(Query$RepositoryDetail$repository) _then;

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
    Object? issues = _undefined,
    Object? licenseInfo = _undefined,
  }) =>
      _then(Query$RepositoryDetail$repository(
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
        repositoryTopics:
            repositoryTopics == _undefined || repositoryTopics == null
                ? _instance.repositoryTopics
                : (repositoryTopics
                    as Query$RepositoryDetail$repository$repositoryTopics),
        primaryLanguage: primaryLanguage == _undefined
            ? _instance.primaryLanguage
            : (primaryLanguage as Fragment$LanguageData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        issues: issues == _undefined || issues == null
            ? _instance.issues
            : (issues as Query$RepositoryDetail$repository$issues),
        licenseInfo: licenseInfo == _undefined
            ? _instance.licenseInfo
            : (licenseInfo as Query$RepositoryDetail$repository$licenseInfo?),
      ));

  CopyWith$Query$RepositoryDetail$repository$repositoryTopics<TRes>
      get repositoryTopics {
    final local$repositoryTopics = _instance.repositoryTopics;
    return CopyWith$Query$RepositoryDetail$repository$repositoryTopics(
        local$repositoryTopics, (e) => call(repositoryTopics: e));
  }

  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage {
    final local$primaryLanguage = _instance.primaryLanguage;
    return local$primaryLanguage == null
        ? CopyWith$Fragment$LanguageData.stub(_then(_instance))
        : CopyWith$Fragment$LanguageData(
            local$primaryLanguage, (e) => call(primaryLanguage: e));
  }

  CopyWith$Query$RepositoryDetail$repository$issues<TRes> get issues {
    final local$issues = _instance.issues;
    return CopyWith$Query$RepositoryDetail$repository$issues(
        local$issues, (e) => call(issues: e));
  }

  CopyWith$Query$RepositoryDetail$repository$licenseInfo<TRes> get licenseInfo {
    final local$licenseInfo = _instance.licenseInfo;
    return local$licenseInfo == null
        ? CopyWith$Query$RepositoryDetail$repository$licenseInfo.stub(
            _then(_instance))
        : CopyWith$Query$RepositoryDetail$repository$licenseInfo(
            local$licenseInfo, (e) => call(licenseInfo: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryDetail$repository<TRes>
    implements CopyWith$Query$RepositoryDetail$repository<TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail$repository(this._res);

  TRes _res;

  call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Query$RepositoryDetail$repository$repositoryTopics? repositoryTopics,
    Fragment$LanguageData? primaryLanguage,
    String? $__typename,
    Query$RepositoryDetail$repository$issues? issues,
    Query$RepositoryDetail$repository$licenseInfo? licenseInfo,
  }) =>
      _res;

  CopyWith$Query$RepositoryDetail$repository$repositoryTopics<TRes>
      get repositoryTopics =>
          CopyWith$Query$RepositoryDetail$repository$repositoryTopics.stub(
              _res);

  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage =>
      CopyWith$Fragment$LanguageData.stub(_res);

  CopyWith$Query$RepositoryDetail$repository$issues<TRes> get issues =>
      CopyWith$Query$RepositoryDetail$repository$issues.stub(_res);

  CopyWith$Query$RepositoryDetail$repository$licenseInfo<TRes>
      get licenseInfo =>
          CopyWith$Query$RepositoryDetail$repository$licenseInfo.stub(_res);
}

class Query$RepositoryDetail$repository$repositoryTopics
    implements Fragment$RepositoryData$repositoryTopics {
  Query$RepositoryDetail$repository$repositoryTopics({
    this.edges,
    this.$__typename = 'RepositoryTopicConnection',
  });

  factory Query$RepositoryDetail$repository$repositoryTopics.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryDetail$repository$repositoryTopics(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$RepositoryDetail$repository$repositoryTopics$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$RepositoryDetail$repository$repositoryTopics$edges?>? edges;

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
    if (!(other is Query$RepositoryDetail$repository$repositoryTopics) ||
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

extension UtilityExtension$Query$RepositoryDetail$repository$repositoryTopics
    on Query$RepositoryDetail$repository$repositoryTopics {
  CopyWith$Query$RepositoryDetail$repository$repositoryTopics<
          Query$RepositoryDetail$repository$repositoryTopics>
      get copyWith =>
          CopyWith$Query$RepositoryDetail$repository$repositoryTopics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryDetail$repository$repositoryTopics<
    TRes> {
  factory CopyWith$Query$RepositoryDetail$repository$repositoryTopics(
    Query$RepositoryDetail$repository$repositoryTopics instance,
    TRes Function(Query$RepositoryDetail$repository$repositoryTopics) then,
  ) = _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics;

  factory CopyWith$Query$RepositoryDetail$repository$repositoryTopics.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics;

  TRes call({
    List<Query$RepositoryDetail$repository$repositoryTopics$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$RepositoryDetail$repository$repositoryTopics$edges?>? Function(
              Iterable<
                  CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges<
                      Query$RepositoryDetail$repository$repositoryTopics$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics<TRes>
    implements
        CopyWith$Query$RepositoryDetail$repository$repositoryTopics<TRes> {
  _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics(
    this._instance,
    this._then,
  );

  final Query$RepositoryDetail$repository$repositoryTopics _instance;

  final TRes Function(Query$RepositoryDetail$repository$repositoryTopics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryDetail$repository$repositoryTopics(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<
                Query$RepositoryDetail$repository$repositoryTopics$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$RepositoryDetail$repository$repositoryTopics$edges?>? Function(
                  Iterable<
                      CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges<
                          Query$RepositoryDetail$repository$repositoryTopics$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics<TRes>
    implements
        CopyWith$Query$RepositoryDetail$repository$repositoryTopics<TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics(
      this._res);

  TRes _res;

  call({
    List<Query$RepositoryDetail$repository$repositoryTopics$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$RepositoryDetail$repository$repositoryTopics$edges
    implements Fragment$RepositoryData$repositoryTopics$edges {
  Query$RepositoryDetail$repository$repositoryTopics$edges({
    this.node,
    this.$__typename = 'RepositoryTopicEdge',
  });

  factory Query$RepositoryDetail$repository$repositoryTopics$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryDetail$repository$repositoryTopics$edges(
      node: l$node == null
          ? null
          : Query$RepositoryDetail$repository$repositoryTopics$edges$node
              .fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RepositoryDetail$repository$repositoryTopics$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
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
    if (!(other is Query$RepositoryDetail$repository$repositoryTopics$edges) ||
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

extension UtilityExtension$Query$RepositoryDetail$repository$repositoryTopics$edges
    on Query$RepositoryDetail$repository$repositoryTopics$edges {
  CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges<
          Query$RepositoryDetail$repository$repositoryTopics$edges>
      get copyWith =>
          CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges<
    TRes> {
  factory CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges(
    Query$RepositoryDetail$repository$repositoryTopics$edges instance,
    TRes Function(Query$RepositoryDetail$repository$repositoryTopics$edges)
        then,
  ) = _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics$edges;

  factory CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics$edges;

  TRes call({
    Query$RepositoryDetail$repository$repositoryTopics$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node<TRes>
      get node;
}

class _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics$edges<
        TRes>
    implements
        CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges<
            TRes> {
  _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics$edges(
    this._instance,
    this._then,
  );

  final Query$RepositoryDetail$repository$repositoryTopics$edges _instance;

  final TRes Function(Query$RepositoryDetail$repository$repositoryTopics$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryDetail$repository$repositoryTopics$edges(
        node: node == _undefined
            ? _instance.node
            : (node
                as Query$RepositoryDetail$repository$repositoryTopics$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node<TRes>
      get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node
            .stub(_then(_instance))
        : CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics$edges<
        TRes>
    implements
        CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges<
            TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics$edges(
      this._res);

  TRes _res;

  call({
    Query$RepositoryDetail$repository$repositoryTopics$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node<TRes>
      get node =>
          CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node
              .stub(_res);
}

class Query$RepositoryDetail$repository$repositoryTopics$edges$node
    implements Fragment$RepositoryData$repositoryTopics$edges$node {
  Query$RepositoryDetail$repository$repositoryTopics$edges$node({
    required this.topic,
    this.$__typename = 'RepositoryTopic',
  });

  factory Query$RepositoryDetail$repository$repositoryTopics$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$topic = json['topic'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryDetail$repository$repositoryTopics$edges$node(
      topic: Fragment$TopicData.fromJson((l$topic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$TopicData topic;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topic = topic;
    _resultData['topic'] = l$topic.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topic = topic;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topic,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$RepositoryDetail$repository$repositoryTopics$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$topic = topic;
    final lOther$topic = other.topic;
    if (l$topic != lOther$topic) {
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

extension UtilityExtension$Query$RepositoryDetail$repository$repositoryTopics$edges$node
    on Query$RepositoryDetail$repository$repositoryTopics$edges$node {
  CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node<
          Query$RepositoryDetail$repository$repositoryTopics$edges$node>
      get copyWith =>
          CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node<
    TRes> {
  factory CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node(
    Query$RepositoryDetail$repository$repositoryTopics$edges$node instance,
    TRes Function(Query$RepositoryDetail$repository$repositoryTopics$edges$node)
        then,
  ) = _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics$edges$node;

  factory CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics$edges$node;

  TRes call({
    Fragment$TopicData? topic,
    String? $__typename,
  });
  CopyWith$Fragment$TopicData<TRes> get topic;
}

class _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics$edges$node<
        TRes>
    implements
        CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node<
            TRes> {
  _CopyWithImpl$Query$RepositoryDetail$repository$repositoryTopics$edges$node(
    this._instance,
    this._then,
  );

  final Query$RepositoryDetail$repository$repositoryTopics$edges$node _instance;

  final TRes Function(
      Query$RepositoryDetail$repository$repositoryTopics$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryDetail$repository$repositoryTopics$edges$node(
        topic: topic == _undefined || topic == null
            ? _instance.topic
            : (topic as Fragment$TopicData),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TopicData<TRes> get topic {
    final local$topic = _instance.topic;
    return CopyWith$Fragment$TopicData(local$topic, (e) => call(topic: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics$edges$node<
        TRes>
    implements
        CopyWith$Query$RepositoryDetail$repository$repositoryTopics$edges$node<
            TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail$repository$repositoryTopics$edges$node(
      this._res);

  TRes _res;

  call({
    Fragment$TopicData? topic,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TopicData<TRes> get topic =>
      CopyWith$Fragment$TopicData.stub(_res);
}

class Query$RepositoryDetail$repository$issues {
  Query$RepositoryDetail$repository$issues({
    required this.totalCount,
    this.$__typename = 'IssueConnection',
  });

  factory Query$RepositoryDetail$repository$issues.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryDetail$repository$issues(
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RepositoryDetail$repository$issues) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$RepositoryDetail$repository$issues
    on Query$RepositoryDetail$repository$issues {
  CopyWith$Query$RepositoryDetail$repository$issues<
          Query$RepositoryDetail$repository$issues>
      get copyWith => CopyWith$Query$RepositoryDetail$repository$issues(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryDetail$repository$issues<TRes> {
  factory CopyWith$Query$RepositoryDetail$repository$issues(
    Query$RepositoryDetail$repository$issues instance,
    TRes Function(Query$RepositoryDetail$repository$issues) then,
  ) = _CopyWithImpl$Query$RepositoryDetail$repository$issues;

  factory CopyWith$Query$RepositoryDetail$repository$issues.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryDetail$repository$issues;

  TRes call({
    int? totalCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RepositoryDetail$repository$issues<TRes>
    implements CopyWith$Query$RepositoryDetail$repository$issues<TRes> {
  _CopyWithImpl$Query$RepositoryDetail$repository$issues(
    this._instance,
    this._then,
  );

  final Query$RepositoryDetail$repository$issues _instance;

  final TRes Function(Query$RepositoryDetail$repository$issues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryDetail$repository$issues(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RepositoryDetail$repository$issues<TRes>
    implements CopyWith$Query$RepositoryDetail$repository$issues<TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail$repository$issues(this._res);

  TRes _res;

  call({
    int? totalCount,
    String? $__typename,
  }) =>
      _res;
}

class Query$RepositoryDetail$repository$licenseInfo {
  Query$RepositoryDetail$repository$licenseInfo({
    this.spdxId,
    this.$__typename = 'License',
  });

  factory Query$RepositoryDetail$repository$licenseInfo.fromJson(
      Map<String, dynamic> json) {
    final l$spdxId = json['spdxId'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryDetail$repository$licenseInfo(
      spdxId: (l$spdxId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? spdxId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$spdxId = spdxId;
    _resultData['spdxId'] = l$spdxId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$spdxId = spdxId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$spdxId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RepositoryDetail$repository$licenseInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$spdxId = spdxId;
    final lOther$spdxId = other.spdxId;
    if (l$spdxId != lOther$spdxId) {
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

extension UtilityExtension$Query$RepositoryDetail$repository$licenseInfo
    on Query$RepositoryDetail$repository$licenseInfo {
  CopyWith$Query$RepositoryDetail$repository$licenseInfo<
          Query$RepositoryDetail$repository$licenseInfo>
      get copyWith => CopyWith$Query$RepositoryDetail$repository$licenseInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryDetail$repository$licenseInfo<TRes> {
  factory CopyWith$Query$RepositoryDetail$repository$licenseInfo(
    Query$RepositoryDetail$repository$licenseInfo instance,
    TRes Function(Query$RepositoryDetail$repository$licenseInfo) then,
  ) = _CopyWithImpl$Query$RepositoryDetail$repository$licenseInfo;

  factory CopyWith$Query$RepositoryDetail$repository$licenseInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryDetail$repository$licenseInfo;

  TRes call({
    String? spdxId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$RepositoryDetail$repository$licenseInfo<TRes>
    implements CopyWith$Query$RepositoryDetail$repository$licenseInfo<TRes> {
  _CopyWithImpl$Query$RepositoryDetail$repository$licenseInfo(
    this._instance,
    this._then,
  );

  final Query$RepositoryDetail$repository$licenseInfo _instance;

  final TRes Function(Query$RepositoryDetail$repository$licenseInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? spdxId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryDetail$repository$licenseInfo(
        spdxId: spdxId == _undefined ? _instance.spdxId : (spdxId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$RepositoryDetail$repository$licenseInfo<TRes>
    implements CopyWith$Query$RepositoryDetail$repository$licenseInfo<TRes> {
  _CopyWithStubImpl$Query$RepositoryDetail$repository$licenseInfo(this._res);

  TRes _res;

  call({
    String? spdxId,
    String? $__typename,
  }) =>
      _res;
}
