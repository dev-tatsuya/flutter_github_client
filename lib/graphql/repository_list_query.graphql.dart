import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$RepositoryData {
  Fragment$RepositoryData({
    required this.id,
    required this.nameWithOwner,
    this.description,
    required this.stargazerCount,
    required this.viewerHasStarred,
    required this.repositoryTopics,
    this.primaryLanguage,
    this.$__typename = 'Repository',
  });

  factory Fragment$RepositoryData.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$nameWithOwner = json['nameWithOwner'];
    final l$description = json['description'];
    final l$stargazerCount = json['stargazerCount'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$repositoryTopics = json['repositoryTopics'];
    final l$primaryLanguage = json['primaryLanguage'];
    final l$$__typename = json['__typename'];
    return Fragment$RepositoryData(
      id: (l$id as String),
      nameWithOwner: (l$nameWithOwner as String),
      description: (l$description as String?),
      stargazerCount: (l$stargazerCount as int),
      viewerHasStarred: (l$viewerHasStarred as bool),
      repositoryTopics: Fragment$RepositoryData$repositoryTopics.fromJson(
          (l$repositoryTopics as Map<String, dynamic>)),
      primaryLanguage: l$primaryLanguage == null
          ? null
          : Fragment$LanguageData.fromJson(
              (l$primaryLanguage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String nameWithOwner;

  final String? description;

  final int stargazerCount;

  final bool viewerHasStarred;

  final Fragment$RepositoryData$repositoryTopics repositoryTopics;

  final Fragment$LanguageData? primaryLanguage;

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
    if (!(other is Fragment$RepositoryData) ||
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

extension UtilityExtension$Fragment$RepositoryData on Fragment$RepositoryData {
  CopyWith$Fragment$RepositoryData<Fragment$RepositoryData> get copyWith =>
      CopyWith$Fragment$RepositoryData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$RepositoryData<TRes> {
  factory CopyWith$Fragment$RepositoryData(
    Fragment$RepositoryData instance,
    TRes Function(Fragment$RepositoryData) then,
  ) = _CopyWithImpl$Fragment$RepositoryData;

  factory CopyWith$Fragment$RepositoryData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RepositoryData;

  TRes call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Fragment$RepositoryData$repositoryTopics? repositoryTopics,
    Fragment$LanguageData? primaryLanguage,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryData$repositoryTopics<TRes> get repositoryTopics;
  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage;
}

class _CopyWithImpl$Fragment$RepositoryData<TRes>
    implements CopyWith$Fragment$RepositoryData<TRes> {
  _CopyWithImpl$Fragment$RepositoryData(
    this._instance,
    this._then,
  );

  final Fragment$RepositoryData _instance;

  final TRes Function(Fragment$RepositoryData) _then;

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
      _then(Fragment$RepositoryData(
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
            : (repositoryTopics as Fragment$RepositoryData$repositoryTopics),
        primaryLanguage: primaryLanguage == _undefined
            ? _instance.primaryLanguage
            : (primaryLanguage as Fragment$LanguageData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryData$repositoryTopics<TRes> get repositoryTopics {
    final local$repositoryTopics = _instance.repositoryTopics;
    return CopyWith$Fragment$RepositoryData$repositoryTopics(
        local$repositoryTopics, (e) => call(repositoryTopics: e));
  }

  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage {
    final local$primaryLanguage = _instance.primaryLanguage;
    return local$primaryLanguage == null
        ? CopyWith$Fragment$LanguageData.stub(_then(_instance))
        : CopyWith$Fragment$LanguageData(
            local$primaryLanguage, (e) => call(primaryLanguage: e));
  }
}

class _CopyWithStubImpl$Fragment$RepositoryData<TRes>
    implements CopyWith$Fragment$RepositoryData<TRes> {
  _CopyWithStubImpl$Fragment$RepositoryData(this._res);

  TRes _res;

  call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Fragment$RepositoryData$repositoryTopics? repositoryTopics,
    Fragment$LanguageData? primaryLanguage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryData$repositoryTopics<TRes>
      get repositoryTopics =>
          CopyWith$Fragment$RepositoryData$repositoryTopics.stub(_res);

  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage =>
      CopyWith$Fragment$LanguageData.stub(_res);
}

const fragmentDefinitionRepositoryData = FragmentDefinitionNode(
  name: NameNode(value: 'RepositoryData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Repository'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'nameWithOwner'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'stargazerCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'viewerHasStarred'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'repositoryTopics'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'first'),
          value: IntValueNode(value: '5'),
        )
      ],
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
                FieldNode(
                  name: NameNode(value: 'topic'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                      name: NameNode(value: 'TopicData'),
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
      name: NameNode(value: 'primaryLanguage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'LanguageData'),
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
);
const documentNodeFragmentRepositoryData = DocumentNode(definitions: [
  fragmentDefinitionRepositoryData,
  fragmentDefinitionTopicData,
  fragmentDefinitionLanguageData,
]);

extension ClientExtension$Fragment$RepositoryData on graphql.GraphQLClient {
  void writeFragment$RepositoryData({
    required Fragment$RepositoryData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'RepositoryData',
            document: documentNodeFragmentRepositoryData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$RepositoryData? readFragment$RepositoryData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'RepositoryData',
          document: documentNodeFragmentRepositoryData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$RepositoryData.fromJson(result);
  }
}

class Fragment$RepositoryData$repositoryTopics {
  Fragment$RepositoryData$repositoryTopics({
    this.edges,
    this.$__typename = 'RepositoryTopicConnection',
  });

  factory Fragment$RepositoryData$repositoryTopics.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$RepositoryData$repositoryTopics(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$RepositoryData$repositoryTopics$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$RepositoryData$repositoryTopics$edges?>? edges;

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
    if (!(other is Fragment$RepositoryData$repositoryTopics) ||
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

extension UtilityExtension$Fragment$RepositoryData$repositoryTopics
    on Fragment$RepositoryData$repositoryTopics {
  CopyWith$Fragment$RepositoryData$repositoryTopics<
          Fragment$RepositoryData$repositoryTopics>
      get copyWith => CopyWith$Fragment$RepositoryData$repositoryTopics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$RepositoryData$repositoryTopics<TRes> {
  factory CopyWith$Fragment$RepositoryData$repositoryTopics(
    Fragment$RepositoryData$repositoryTopics instance,
    TRes Function(Fragment$RepositoryData$repositoryTopics) then,
  ) = _CopyWithImpl$Fragment$RepositoryData$repositoryTopics;

  factory CopyWith$Fragment$RepositoryData$repositoryTopics.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics;

  TRes call({
    List<Fragment$RepositoryData$repositoryTopics$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$RepositoryData$repositoryTopics$edges?>? Function(
              Iterable<
                  CopyWith$Fragment$RepositoryData$repositoryTopics$edges<
                      Fragment$RepositoryData$repositoryTopics$edges>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$RepositoryData$repositoryTopics<TRes>
    implements CopyWith$Fragment$RepositoryData$repositoryTopics<TRes> {
  _CopyWithImpl$Fragment$RepositoryData$repositoryTopics(
    this._instance,
    this._then,
  );

  final Fragment$RepositoryData$repositoryTopics _instance;

  final TRes Function(Fragment$RepositoryData$repositoryTopics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RepositoryData$repositoryTopics(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Fragment$RepositoryData$repositoryTopics$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$RepositoryData$repositoryTopics$edges?>? Function(
                  Iterable<
                      CopyWith$Fragment$RepositoryData$repositoryTopics$edges<
                          Fragment$RepositoryData$repositoryTopics$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Fragment$RepositoryData$repositoryTopics$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics<TRes>
    implements CopyWith$Fragment$RepositoryData$repositoryTopics<TRes> {
  _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics(this._res);

  TRes _res;

  call({
    List<Fragment$RepositoryData$repositoryTopics$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$RepositoryData$repositoryTopics$edges {
  Fragment$RepositoryData$repositoryTopics$edges({
    this.node,
    this.$__typename = 'RepositoryTopicEdge',
  });

  factory Fragment$RepositoryData$repositoryTopics$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$RepositoryData$repositoryTopics$edges(
      node: l$node == null
          ? null
          : Fragment$RepositoryData$repositoryTopics$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$RepositoryData$repositoryTopics$edges$node? node;

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
    if (!(other is Fragment$RepositoryData$repositoryTopics$edges) ||
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

extension UtilityExtension$Fragment$RepositoryData$repositoryTopics$edges
    on Fragment$RepositoryData$repositoryTopics$edges {
  CopyWith$Fragment$RepositoryData$repositoryTopics$edges<
          Fragment$RepositoryData$repositoryTopics$edges>
      get copyWith => CopyWith$Fragment$RepositoryData$repositoryTopics$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$RepositoryData$repositoryTopics$edges<TRes> {
  factory CopyWith$Fragment$RepositoryData$repositoryTopics$edges(
    Fragment$RepositoryData$repositoryTopics$edges instance,
    TRes Function(Fragment$RepositoryData$repositoryTopics$edges) then,
  ) = _CopyWithImpl$Fragment$RepositoryData$repositoryTopics$edges;

  factory CopyWith$Fragment$RepositoryData$repositoryTopics$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics$edges;

  TRes call({
    Fragment$RepositoryData$repositoryTopics$edges$node? node,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$RepositoryData$repositoryTopics$edges<TRes>
    implements CopyWith$Fragment$RepositoryData$repositoryTopics$edges<TRes> {
  _CopyWithImpl$Fragment$RepositoryData$repositoryTopics$edges(
    this._instance,
    this._then,
  );

  final Fragment$RepositoryData$repositoryTopics$edges _instance;

  final TRes Function(Fragment$RepositoryData$repositoryTopics$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RepositoryData$repositoryTopics$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$RepositoryData$repositoryTopics$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node.stub(
            _then(_instance))
        : CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics$edges<TRes>
    implements CopyWith$Fragment$RepositoryData$repositoryTopics$edges<TRes> {
  _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics$edges(this._res);

  TRes _res;

  call({
    Fragment$RepositoryData$repositoryTopics$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node<TRes> get node =>
      CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node.stub(_res);
}

class Fragment$RepositoryData$repositoryTopics$edges$node {
  Fragment$RepositoryData$repositoryTopics$edges$node({
    required this.topic,
    this.$__typename = 'RepositoryTopic',
  });

  factory Fragment$RepositoryData$repositoryTopics$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$topic = json['topic'];
    final l$$__typename = json['__typename'];
    return Fragment$RepositoryData$repositoryTopics$edges$node(
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
    if (!(other is Fragment$RepositoryData$repositoryTopics$edges$node) ||
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

extension UtilityExtension$Fragment$RepositoryData$repositoryTopics$edges$node
    on Fragment$RepositoryData$repositoryTopics$edges$node {
  CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node<
          Fragment$RepositoryData$repositoryTopics$edges$node>
      get copyWith =>
          CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node<
    TRes> {
  factory CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node(
    Fragment$RepositoryData$repositoryTopics$edges$node instance,
    TRes Function(Fragment$RepositoryData$repositoryTopics$edges$node) then,
  ) = _CopyWithImpl$Fragment$RepositoryData$repositoryTopics$edges$node;

  factory CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics$edges$node;

  TRes call({
    Fragment$TopicData? topic,
    String? $__typename,
  });
  CopyWith$Fragment$TopicData<TRes> get topic;
}

class _CopyWithImpl$Fragment$RepositoryData$repositoryTopics$edges$node<TRes>
    implements
        CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node<TRes> {
  _CopyWithImpl$Fragment$RepositoryData$repositoryTopics$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$RepositoryData$repositoryTopics$edges$node _instance;

  final TRes Function(Fragment$RepositoryData$repositoryTopics$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RepositoryData$repositoryTopics$edges$node(
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

class _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics$edges$node<
        TRes>
    implements
        CopyWith$Fragment$RepositoryData$repositoryTopics$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$RepositoryData$repositoryTopics$edges$node(
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

class Fragment$TopicData {
  Fragment$TopicData({
    required this.id,
    required this.name,
    this.$__typename = 'Topic',
  });

  factory Fragment$TopicData.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$TopicData(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TopicData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$TopicData on Fragment$TopicData {
  CopyWith$Fragment$TopicData<Fragment$TopicData> get copyWith =>
      CopyWith$Fragment$TopicData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TopicData<TRes> {
  factory CopyWith$Fragment$TopicData(
    Fragment$TopicData instance,
    TRes Function(Fragment$TopicData) then,
  ) = _CopyWithImpl$Fragment$TopicData;

  factory CopyWith$Fragment$TopicData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TopicData;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TopicData<TRes>
    implements CopyWith$Fragment$TopicData<TRes> {
  _CopyWithImpl$Fragment$TopicData(
    this._instance,
    this._then,
  );

  final Fragment$TopicData _instance;

  final TRes Function(Fragment$TopicData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TopicData(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TopicData<TRes>
    implements CopyWith$Fragment$TopicData<TRes> {
  _CopyWithStubImpl$Fragment$TopicData(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionTopicData = FragmentDefinitionNode(
  name: NameNode(value: 'TopicData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Topic'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
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
);
const documentNodeFragmentTopicData = DocumentNode(definitions: [
  fragmentDefinitionTopicData,
]);

extension ClientExtension$Fragment$TopicData on graphql.GraphQLClient {
  void writeFragment$TopicData({
    required Fragment$TopicData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TopicData',
            document: documentNodeFragmentTopicData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TopicData? readFragment$TopicData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TopicData',
          document: documentNodeFragmentTopicData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TopicData.fromJson(result);
  }
}

class Fragment$LanguageData {
  Fragment$LanguageData({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Language',
  });

  factory Fragment$LanguageData.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$LanguageData(
      id: (l$id as String),
      name: (l$name as String),
      color: (l$color as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? color;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$LanguageData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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

extension UtilityExtension$Fragment$LanguageData on Fragment$LanguageData {
  CopyWith$Fragment$LanguageData<Fragment$LanguageData> get copyWith =>
      CopyWith$Fragment$LanguageData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$LanguageData<TRes> {
  factory CopyWith$Fragment$LanguageData(
    Fragment$LanguageData instance,
    TRes Function(Fragment$LanguageData) then,
  ) = _CopyWithImpl$Fragment$LanguageData;

  factory CopyWith$Fragment$LanguageData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LanguageData;

  TRes call({
    String? id,
    String? name,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LanguageData<TRes>
    implements CopyWith$Fragment$LanguageData<TRes> {
  _CopyWithImpl$Fragment$LanguageData(
    this._instance,
    this._then,
  );

  final Fragment$LanguageData _instance;

  final TRes Function(Fragment$LanguageData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LanguageData(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LanguageData<TRes>
    implements CopyWith$Fragment$LanguageData<TRes> {
  _CopyWithStubImpl$Fragment$LanguageData(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionLanguageData = FragmentDefinitionNode(
  name: NameNode(value: 'LanguageData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Language'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'color'),
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
);
const documentNodeFragmentLanguageData = DocumentNode(definitions: [
  fragmentDefinitionLanguageData,
]);

extension ClientExtension$Fragment$LanguageData on graphql.GraphQLClient {
  void writeFragment$LanguageData({
    required Fragment$LanguageData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'LanguageData',
            document: documentNodeFragmentLanguageData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$LanguageData? readFragment$LanguageData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LanguageData',
          document: documentNodeFragmentLanguageData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LanguageData.fromJson(result);
  }
}

class Query$RepositoryList {
  Query$RepositoryList({
    required this.search,
    this.$__typename = 'Query',
  });

  factory Query$RepositoryList.fromJson(Map<String, dynamic> json) {
    final l$search = json['search'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryList(
      search: Query$RepositoryList$search.fromJson(
          (l$search as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RepositoryList$search search;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$search = search;
    _resultData['search'] = l$search.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$search,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RepositoryList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
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

extension UtilityExtension$Query$RepositoryList on Query$RepositoryList {
  CopyWith$Query$RepositoryList<Query$RepositoryList> get copyWith =>
      CopyWith$Query$RepositoryList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RepositoryList<TRes> {
  factory CopyWith$Query$RepositoryList(
    Query$RepositoryList instance,
    TRes Function(Query$RepositoryList) then,
  ) = _CopyWithImpl$Query$RepositoryList;

  factory CopyWith$Query$RepositoryList.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryList;

  TRes call({
    Query$RepositoryList$search? search,
    String? $__typename,
  });
  CopyWith$Query$RepositoryList$search<TRes> get search;
}

class _CopyWithImpl$Query$RepositoryList<TRes>
    implements CopyWith$Query$RepositoryList<TRes> {
  _CopyWithImpl$Query$RepositoryList(
    this._instance,
    this._then,
  );

  final Query$RepositoryList _instance;

  final TRes Function(Query$RepositoryList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryList(
        search: search == _undefined || search == null
            ? _instance.search
            : (search as Query$RepositoryList$search),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RepositoryList$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$RepositoryList$search(
        local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryList<TRes>
    implements CopyWith$Query$RepositoryList<TRes> {
  _CopyWithStubImpl$Query$RepositoryList(this._res);

  TRes _res;

  call({
    Query$RepositoryList$search? search,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RepositoryList$search<TRes> get search =>
      CopyWith$Query$RepositoryList$search.stub(_res);
}

const documentNodeQueryRepositoryList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RepositoryList'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'search'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: StringValueNode(
              value: 'flutter',
              isBlock: false,
            ),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: EnumValueNode(name: NameNode(value: 'REPOSITORY')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '10'),
          ),
        ],
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
  fragmentDefinitionRepositoryData,
  fragmentDefinitionTopicData,
  fragmentDefinitionLanguageData,
]);
Query$RepositoryList _parserFn$Query$RepositoryList(
        Map<String, dynamic> data) =>
    Query$RepositoryList.fromJson(data);
typedef OnQueryComplete$Query$RepositoryList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$RepositoryList?,
);

class Options$Query$RepositoryList
    extends graphql.QueryOptions<Query$RepositoryList> {
  Options$Query$RepositoryList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RepositoryList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RepositoryList? onComplete,
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
                    data == null ? null : _parserFn$Query$RepositoryList(data),
                  ),
          onError: onError,
          document: documentNodeQueryRepositoryList,
          parserFn: _parserFn$Query$RepositoryList,
        );

  final OnQueryComplete$Query$RepositoryList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$RepositoryList
    extends graphql.WatchQueryOptions<Query$RepositoryList> {
  WatchOptions$Query$RepositoryList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RepositoryList? typedOptimisticResult,
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
          document: documentNodeQueryRepositoryList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$RepositoryList,
        );
}

class FetchMoreOptions$Query$RepositoryList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RepositoryList(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryRepositoryList,
        );
}

extension ClientExtension$Query$RepositoryList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RepositoryList>> query$RepositoryList(
          [Options$Query$RepositoryList? options]) async =>
      await this.query(options ?? Options$Query$RepositoryList());
  graphql.ObservableQuery<Query$RepositoryList> watchQuery$RepositoryList(
          [WatchOptions$Query$RepositoryList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$RepositoryList());
  void writeQuery$RepositoryList({
    required Query$RepositoryList data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryRepositoryList)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$RepositoryList? readQuery$RepositoryList({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryRepositoryList)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$RepositoryList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$RepositoryList> useQuery$RepositoryList(
        [Options$Query$RepositoryList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$RepositoryList());
graphql.ObservableQuery<Query$RepositoryList> useWatchQuery$RepositoryList(
        [WatchOptions$Query$RepositoryList? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$RepositoryList());

class Query$RepositoryList$Widget
    extends graphql_flutter.Query<Query$RepositoryList> {
  Query$RepositoryList$Widget({
    widgets.Key? key,
    Options$Query$RepositoryList? options,
    required graphql_flutter.QueryBuilder<Query$RepositoryList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$RepositoryList(),
          builder: builder,
        );
}

class Query$RepositoryList$search {
  Query$RepositoryList$search({
    this.edges,
    this.$__typename = 'SearchResultItemConnection',
  });

  factory Query$RepositoryList$search.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$RepositoryList$search$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$RepositoryList$search$edges?>? edges;

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
    if (!(other is Query$RepositoryList$search) ||
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

extension UtilityExtension$Query$RepositoryList$search
    on Query$RepositoryList$search {
  CopyWith$Query$RepositoryList$search<Query$RepositoryList$search>
      get copyWith => CopyWith$Query$RepositoryList$search(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search<TRes> {
  factory CopyWith$Query$RepositoryList$search(
    Query$RepositoryList$search instance,
    TRes Function(Query$RepositoryList$search) then,
  ) = _CopyWithImpl$Query$RepositoryList$search;

  factory CopyWith$Query$RepositoryList$search.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search;

  TRes call({
    List<Query$RepositoryList$search$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$RepositoryList$search$edges?>? Function(
              Iterable<
                  CopyWith$Query$RepositoryList$search$edges<
                      Query$RepositoryList$search$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$RepositoryList$search<TRes>
    implements CopyWith$Query$RepositoryList$search<TRes> {
  _CopyWithImpl$Query$RepositoryList$search(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search _instance;

  final TRes Function(Query$RepositoryList$search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryList$search(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$RepositoryList$search$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$RepositoryList$search$edges?>? Function(
                  Iterable<
                      CopyWith$Query$RepositoryList$search$edges<
                          Query$RepositoryList$search$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$RepositoryList$search$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$RepositoryList$search<TRes>
    implements CopyWith$Query$RepositoryList$search<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search(this._res);

  TRes _res;

  call({
    List<Query$RepositoryList$search$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$RepositoryList$search$edges {
  Query$RepositoryList$search$edges({
    this.node,
    this.$__typename = 'SearchResultItemEdge',
  });

  factory Query$RepositoryList$search$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges(
      node: l$node == null
          ? null
          : Query$RepositoryList$search$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RepositoryList$search$edges$node? node;

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
    if (!(other is Query$RepositoryList$search$edges) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges
    on Query$RepositoryList$search$edges {
  CopyWith$Query$RepositoryList$search$edges<Query$RepositoryList$search$edges>
      get copyWith => CopyWith$Query$RepositoryList$search$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges<TRes> {
  factory CopyWith$Query$RepositoryList$search$edges(
    Query$RepositoryList$search$edges instance,
    TRes Function(Query$RepositoryList$search$edges) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges;

  factory CopyWith$Query$RepositoryList$search$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges;

  TRes call({
    Query$RepositoryList$search$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$RepositoryList$search$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$RepositoryList$search$edges<TRes>
    implements CopyWith$Query$RepositoryList$search$edges<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges _instance;

  final TRes Function(Query$RepositoryList$search$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepositoryList$search$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$RepositoryList$search$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RepositoryList$search$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$RepositoryList$search$edges$node.stub(_then(_instance))
        : CopyWith$Query$RepositoryList$search$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges<TRes>
    implements CopyWith$Query$RepositoryList$search$edges<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges(this._res);

  TRes _res;

  call({
    Query$RepositoryList$search$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RepositoryList$search$edges$node<TRes> get node =>
      CopyWith$Query$RepositoryList$search$edges$node.stub(_res);
}

class Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node({required this.$__typename});

  factory Query$RepositoryList$search$edges$node.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "App":
        return Query$RepositoryList$search$edges$node$$App.fromJson(json);

      case "Discussion":
        return Query$RepositoryList$search$edges$node$$Discussion.fromJson(
            json);

      case "Issue":
        return Query$RepositoryList$search$edges$node$$Issue.fromJson(json);

      case "MarketplaceListing":
        return Query$RepositoryList$search$edges$node$$MarketplaceListing
            .fromJson(json);

      case "Organization":
        return Query$RepositoryList$search$edges$node$$Organization.fromJson(
            json);

      case "PullRequest":
        return Query$RepositoryList$search$edges$node$$PullRequest.fromJson(
            json);

      case "Repository":
        return Query$RepositoryList$search$edges$node$$Repository.fromJson(
            json);

      case "User":
        return Query$RepositoryList$search$edges$node$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$RepositoryList$search$edges$node(
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
    if (!(other is Query$RepositoryList$search$edges$node) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node
    on Query$RepositoryList$search$edges$node {
  CopyWith$Query$RepositoryList$search$edges$node<
          Query$RepositoryList$search$edges$node>
      get copyWith => CopyWith$Query$RepositoryList$search$edges$node(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$RepositoryList$search$edges$node$$App) app,
    required _T Function(Query$RepositoryList$search$edges$node$$Discussion)
        discussion,
    required _T Function(Query$RepositoryList$search$edges$node$$Issue) issue,
    required _T Function(
            Query$RepositoryList$search$edges$node$$MarketplaceListing)
        marketplaceListing,
    required _T Function(Query$RepositoryList$search$edges$node$$Organization)
        organization,
    required _T Function(Query$RepositoryList$search$edges$node$$PullRequest)
        pullRequest,
    required _T Function(Query$RepositoryList$search$edges$node$$Repository)
        repository,
    required _T Function(Query$RepositoryList$search$edges$node$$User) user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "App":
        return app(this as Query$RepositoryList$search$edges$node$$App);

      case "Discussion":
        return discussion(
            this as Query$RepositoryList$search$edges$node$$Discussion);

      case "Issue":
        return issue(this as Query$RepositoryList$search$edges$node$$Issue);

      case "MarketplaceListing":
        return marketplaceListing(
            this as Query$RepositoryList$search$edges$node$$MarketplaceListing);

      case "Organization":
        return organization(
            this as Query$RepositoryList$search$edges$node$$Organization);

      case "PullRequest":
        return pullRequest(
            this as Query$RepositoryList$search$edges$node$$PullRequest);

      case "Repository":
        return repository(
            this as Query$RepositoryList$search$edges$node$$Repository);

      case "User":
        return user(this as Query$RepositoryList$search$edges$node$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$RepositoryList$search$edges$node$$App)? app,
    _T Function(Query$RepositoryList$search$edges$node$$Discussion)? discussion,
    _T Function(Query$RepositoryList$search$edges$node$$Issue)? issue,
    _T Function(Query$RepositoryList$search$edges$node$$MarketplaceListing)?
        marketplaceListing,
    _T Function(Query$RepositoryList$search$edges$node$$Organization)?
        organization,
    _T Function(Query$RepositoryList$search$edges$node$$PullRequest)?
        pullRequest,
    _T Function(Query$RepositoryList$search$edges$node$$Repository)? repository,
    _T Function(Query$RepositoryList$search$edges$node$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "App":
        if (app != null) {
          return app(this as Query$RepositoryList$search$edges$node$$App);
        } else {
          return orElse();
        }

      case "Discussion":
        if (discussion != null) {
          return discussion(
              this as Query$RepositoryList$search$edges$node$$Discussion);
        } else {
          return orElse();
        }

      case "Issue":
        if (issue != null) {
          return issue(this as Query$RepositoryList$search$edges$node$$Issue);
        } else {
          return orElse();
        }

      case "MarketplaceListing":
        if (marketplaceListing != null) {
          return marketplaceListing(this
              as Query$RepositoryList$search$edges$node$$MarketplaceListing);
        } else {
          return orElse();
        }

      case "Organization":
        if (organization != null) {
          return organization(
              this as Query$RepositoryList$search$edges$node$$Organization);
        } else {
          return orElse();
        }

      case "PullRequest":
        if (pullRequest != null) {
          return pullRequest(
              this as Query$RepositoryList$search$edges$node$$PullRequest);
        } else {
          return orElse();
        }

      case "Repository":
        if (repository != null) {
          return repository(
              this as Query$RepositoryList$search$edges$node$$Repository);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$RepositoryList$search$edges$node$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$RepositoryList$search$edges$node<TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node(
    Query$RepositoryList$search$edges$node instance,
    TRes Function(Query$RepositoryList$search$edges$node) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node;

  factory CopyWith$Query$RepositoryList$search$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node<TRes>
    implements CopyWith$Query$RepositoryList$search$edges$node<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node _instance;

  final TRes Function(Query$RepositoryList$search$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepositoryList$search$edges$node(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node<TRes>
    implements CopyWith$Query$RepositoryList$search$edges$node<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepositoryList$search$edges$node$$App
    implements Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node$$App({this.$__typename = 'App'});

  factory Query$RepositoryList$search$edges$node$$App.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges$node$$App(
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
    if (!(other is Query$RepositoryList$search$edges$node$$App) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node$$App
    on Query$RepositoryList$search$edges$node$$App {
  CopyWith$Query$RepositoryList$search$edges$node$$App<
          Query$RepositoryList$search$edges$node$$App>
      get copyWith => CopyWith$Query$RepositoryList$search$edges$node$$App(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges$node$$App<TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node$$App(
    Query$RepositoryList$search$edges$node$$App instance,
    TRes Function(Query$RepositoryList$search$edges$node$$App) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node$$App;

  factory CopyWith$Query$RepositoryList$search$edges$node$$App.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$App;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node$$App<TRes>
    implements CopyWith$Query$RepositoryList$search$edges$node$$App<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node$$App(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node$$App _instance;

  final TRes Function(Query$RepositoryList$search$edges$node$$App) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepositoryList$search$edges$node$$App(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$App<TRes>
    implements CopyWith$Query$RepositoryList$search$edges$node$$App<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$App(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepositoryList$search$edges$node$$Discussion
    implements Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node$$Discussion(
      {this.$__typename = 'Discussion'});

  factory Query$RepositoryList$search$edges$node$$Discussion.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges$node$$Discussion(
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
    if (!(other is Query$RepositoryList$search$edges$node$$Discussion) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node$$Discussion
    on Query$RepositoryList$search$edges$node$$Discussion {
  CopyWith$Query$RepositoryList$search$edges$node$$Discussion<
          Query$RepositoryList$search$edges$node$$Discussion>
      get copyWith =>
          CopyWith$Query$RepositoryList$search$edges$node$$Discussion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges$node$$Discussion<
    TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node$$Discussion(
    Query$RepositoryList$search$edges$node$$Discussion instance,
    TRes Function(Query$RepositoryList$search$edges$node$$Discussion) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node$$Discussion;

  factory CopyWith$Query$RepositoryList$search$edges$node$$Discussion.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Discussion;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node$$Discussion<TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$Discussion<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node$$Discussion(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node$$Discussion _instance;

  final TRes Function(Query$RepositoryList$search$edges$node$$Discussion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepositoryList$search$edges$node$$Discussion(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Discussion<TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$Discussion<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Discussion(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepositoryList$search$edges$node$$Issue
    implements Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node$$Issue({this.$__typename = 'Issue'});

  factory Query$RepositoryList$search$edges$node$$Issue.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges$node$$Issue(
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
    if (!(other is Query$RepositoryList$search$edges$node$$Issue) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node$$Issue
    on Query$RepositoryList$search$edges$node$$Issue {
  CopyWith$Query$RepositoryList$search$edges$node$$Issue<
          Query$RepositoryList$search$edges$node$$Issue>
      get copyWith => CopyWith$Query$RepositoryList$search$edges$node$$Issue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges$node$$Issue<TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node$$Issue(
    Query$RepositoryList$search$edges$node$$Issue instance,
    TRes Function(Query$RepositoryList$search$edges$node$$Issue) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node$$Issue;

  factory CopyWith$Query$RepositoryList$search$edges$node$$Issue.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Issue;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node$$Issue<TRes>
    implements CopyWith$Query$RepositoryList$search$edges$node$$Issue<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node$$Issue(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node$$Issue _instance;

  final TRes Function(Query$RepositoryList$search$edges$node$$Issue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepositoryList$search$edges$node$$Issue(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Issue<TRes>
    implements CopyWith$Query$RepositoryList$search$edges$node$$Issue<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Issue(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepositoryList$search$edges$node$$MarketplaceListing
    implements Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node$$MarketplaceListing(
      {this.$__typename = 'MarketplaceListing'});

  factory Query$RepositoryList$search$edges$node$$MarketplaceListing.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges$node$$MarketplaceListing(
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
    if (!(other
            is Query$RepositoryList$search$edges$node$$MarketplaceListing) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node$$MarketplaceListing
    on Query$RepositoryList$search$edges$node$$MarketplaceListing {
  CopyWith$Query$RepositoryList$search$edges$node$$MarketplaceListing<
          Query$RepositoryList$search$edges$node$$MarketplaceListing>
      get copyWith =>
          CopyWith$Query$RepositoryList$search$edges$node$$MarketplaceListing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges$node$$MarketplaceListing<
    TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node$$MarketplaceListing(
    Query$RepositoryList$search$edges$node$$MarketplaceListing instance,
    TRes Function(Query$RepositoryList$search$edges$node$$MarketplaceListing)
        then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node$$MarketplaceListing;

  factory CopyWith$Query$RepositoryList$search$edges$node$$MarketplaceListing.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$MarketplaceListing;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$MarketplaceListing<
            TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node$$MarketplaceListing(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node$$MarketplaceListing _instance;

  final TRes Function(
      Query$RepositoryList$search$edges$node$$MarketplaceListing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepositoryList$search$edges$node$$MarketplaceListing(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$MarketplaceListing<
            TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$MarketplaceListing(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepositoryList$search$edges$node$$Organization
    implements Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node$$Organization(
      {this.$__typename = 'Organization'});

  factory Query$RepositoryList$search$edges$node$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges$node$$Organization(
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
    if (!(other is Query$RepositoryList$search$edges$node$$Organization) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node$$Organization
    on Query$RepositoryList$search$edges$node$$Organization {
  CopyWith$Query$RepositoryList$search$edges$node$$Organization<
          Query$RepositoryList$search$edges$node$$Organization>
      get copyWith =>
          CopyWith$Query$RepositoryList$search$edges$node$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges$node$$Organization<
    TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node$$Organization(
    Query$RepositoryList$search$edges$node$$Organization instance,
    TRes Function(Query$RepositoryList$search$edges$node$$Organization) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node$$Organization;

  factory CopyWith$Query$RepositoryList$search$edges$node$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Organization;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node$$Organization<TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$Organization<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node$$Organization(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node$$Organization _instance;

  final TRes Function(Query$RepositoryList$search$edges$node$$Organization)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepositoryList$search$edges$node$$Organization(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Organization<
        TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$Organization<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Organization(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepositoryList$search$edges$node$$PullRequest
    implements Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node$$PullRequest(
      {this.$__typename = 'PullRequest'});

  factory Query$RepositoryList$search$edges$node$$PullRequest.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges$node$$PullRequest(
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
    if (!(other is Query$RepositoryList$search$edges$node$$PullRequest) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node$$PullRequest
    on Query$RepositoryList$search$edges$node$$PullRequest {
  CopyWith$Query$RepositoryList$search$edges$node$$PullRequest<
          Query$RepositoryList$search$edges$node$$PullRequest>
      get copyWith =>
          CopyWith$Query$RepositoryList$search$edges$node$$PullRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges$node$$PullRequest<
    TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node$$PullRequest(
    Query$RepositoryList$search$edges$node$$PullRequest instance,
    TRes Function(Query$RepositoryList$search$edges$node$$PullRequest) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node$$PullRequest;

  factory CopyWith$Query$RepositoryList$search$edges$node$$PullRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$PullRequest;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node$$PullRequest<TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$PullRequest<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node$$PullRequest(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node$$PullRequest _instance;

  final TRes Function(Query$RepositoryList$search$edges$node$$PullRequest)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepositoryList$search$edges$node$$PullRequest(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$PullRequest<
        TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$PullRequest<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$PullRequest(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepositoryList$search$edges$node$$Repository
    implements Fragment$RepositoryData, Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node$$Repository({
    required this.id,
    required this.nameWithOwner,
    this.description,
    required this.stargazerCount,
    required this.viewerHasStarred,
    required this.repositoryTopics,
    this.primaryLanguage,
    this.$__typename = 'Repository',
  });

  factory Query$RepositoryList$search$edges$node$$Repository.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$nameWithOwner = json['nameWithOwner'];
    final l$description = json['description'];
    final l$stargazerCount = json['stargazerCount'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$repositoryTopics = json['repositoryTopics'];
    final l$primaryLanguage = json['primaryLanguage'];
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges$node$$Repository(
      id: (l$id as String),
      nameWithOwner: (l$nameWithOwner as String),
      description: (l$description as String?),
      stargazerCount: (l$stargazerCount as int),
      viewerHasStarred: (l$viewerHasStarred as bool),
      repositoryTopics: Fragment$RepositoryData$repositoryTopics.fromJson(
          (l$repositoryTopics as Map<String, dynamic>)),
      primaryLanguage: l$primaryLanguage == null
          ? null
          : Fragment$LanguageData.fromJson(
              (l$primaryLanguage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String nameWithOwner;

  final String? description;

  final int stargazerCount;

  final bool viewerHasStarred;

  final Fragment$RepositoryData$repositoryTopics repositoryTopics;

  final Fragment$LanguageData? primaryLanguage;

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
    if (!(other is Query$RepositoryList$search$edges$node$$Repository) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node$$Repository
    on Query$RepositoryList$search$edges$node$$Repository {
  CopyWith$Query$RepositoryList$search$edges$node$$Repository<
          Query$RepositoryList$search$edges$node$$Repository>
      get copyWith =>
          CopyWith$Query$RepositoryList$search$edges$node$$Repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges$node$$Repository<
    TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node$$Repository(
    Query$RepositoryList$search$edges$node$$Repository instance,
    TRes Function(Query$RepositoryList$search$edges$node$$Repository) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node$$Repository;

  factory CopyWith$Query$RepositoryList$search$edges$node$$Repository.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Repository;

  TRes call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Fragment$RepositoryData$repositoryTopics? repositoryTopics,
    Fragment$LanguageData? primaryLanguage,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryData$repositoryTopics<TRes> get repositoryTopics;
  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage;
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node$$Repository<TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$Repository<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node$$Repository(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node$$Repository _instance;

  final TRes Function(Query$RepositoryList$search$edges$node$$Repository) _then;

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
      _then(Query$RepositoryList$search$edges$node$$Repository(
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
            : (repositoryTopics as Fragment$RepositoryData$repositoryTopics),
        primaryLanguage: primaryLanguage == _undefined
            ? _instance.primaryLanguage
            : (primaryLanguage as Fragment$LanguageData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryData$repositoryTopics<TRes> get repositoryTopics {
    final local$repositoryTopics = _instance.repositoryTopics;
    return CopyWith$Fragment$RepositoryData$repositoryTopics(
        local$repositoryTopics, (e) => call(repositoryTopics: e));
  }

  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage {
    final local$primaryLanguage = _instance.primaryLanguage;
    return local$primaryLanguage == null
        ? CopyWith$Fragment$LanguageData.stub(_then(_instance))
        : CopyWith$Fragment$LanguageData(
            local$primaryLanguage, (e) => call(primaryLanguage: e));
  }
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Repository<TRes>
    implements
        CopyWith$Query$RepositoryList$search$edges$node$$Repository<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$Repository(
      this._res);

  TRes _res;

  call({
    String? id,
    String? nameWithOwner,
    String? description,
    int? stargazerCount,
    bool? viewerHasStarred,
    Fragment$RepositoryData$repositoryTopics? repositoryTopics,
    Fragment$LanguageData? primaryLanguage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryData$repositoryTopics<TRes>
      get repositoryTopics =>
          CopyWith$Fragment$RepositoryData$repositoryTopics.stub(_res);

  CopyWith$Fragment$LanguageData<TRes> get primaryLanguage =>
      CopyWith$Fragment$LanguageData.stub(_res);
}

class Query$RepositoryList$search$edges$node$$User
    implements Query$RepositoryList$search$edges$node {
  Query$RepositoryList$search$edges$node$$User({this.$__typename = 'User'});

  factory Query$RepositoryList$search$edges$node$$User.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepositoryList$search$edges$node$$User(
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
    if (!(other is Query$RepositoryList$search$edges$node$$User) ||
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

extension UtilityExtension$Query$RepositoryList$search$edges$node$$User
    on Query$RepositoryList$search$edges$node$$User {
  CopyWith$Query$RepositoryList$search$edges$node$$User<
          Query$RepositoryList$search$edges$node$$User>
      get copyWith => CopyWith$Query$RepositoryList$search$edges$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepositoryList$search$edges$node$$User<TRes> {
  factory CopyWith$Query$RepositoryList$search$edges$node$$User(
    Query$RepositoryList$search$edges$node$$User instance,
    TRes Function(Query$RepositoryList$search$edges$node$$User) then,
  ) = _CopyWithImpl$Query$RepositoryList$search$edges$node$$User;

  factory CopyWith$Query$RepositoryList$search$edges$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$User;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepositoryList$search$edges$node$$User<TRes>
    implements CopyWith$Query$RepositoryList$search$edges$node$$User<TRes> {
  _CopyWithImpl$Query$RepositoryList$search$edges$node$$User(
    this._instance,
    this._then,
  );

  final Query$RepositoryList$search$edges$node$$User _instance;

  final TRes Function(Query$RepositoryList$search$edges$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepositoryList$search$edges$node$$User(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$User<TRes>
    implements CopyWith$Query$RepositoryList$search$edges$node$$User<TRes> {
  _CopyWithStubImpl$Query$RepositoryList$search$edges$node$$User(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
