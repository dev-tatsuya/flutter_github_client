import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$RepositoryItem {
  Fragment$RepositoryItem({
    required this.id,
    required this.nameWithOwner,
    this.description,
    required this.stargazerCount,
    required this.viewerHasStarred,
    required this.repositoryTopics,
    this.primaryLanguage,
    this.$__typename = 'Repository',
  });

  factory Fragment$RepositoryItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$nameWithOwner = json['nameWithOwner'];
    final l$description = json['description'];
    final l$stargazerCount = json['stargazerCount'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$repositoryTopics = json['repositoryTopics'];
    final l$primaryLanguage = json['primaryLanguage'];
    final l$$__typename = json['__typename'];
    return Fragment$RepositoryItem(
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
    if (!(other is Fragment$RepositoryItem) ||
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

extension UtilityExtension$Fragment$RepositoryItem on Fragment$RepositoryItem {
  CopyWith$Fragment$RepositoryItem<Fragment$RepositoryItem> get copyWith =>
      CopyWith$Fragment$RepositoryItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$RepositoryItem<TRes> {
  factory CopyWith$Fragment$RepositoryItem(
    Fragment$RepositoryItem instance,
    TRes Function(Fragment$RepositoryItem) then,
  ) = _CopyWithImpl$Fragment$RepositoryItem;

  factory CopyWith$Fragment$RepositoryItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RepositoryItem;

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

class _CopyWithImpl$Fragment$RepositoryItem<TRes>
    implements CopyWith$Fragment$RepositoryItem<TRes> {
  _CopyWithImpl$Fragment$RepositoryItem(
    this._instance,
    this._then,
  );

  final Fragment$RepositoryItem _instance;

  final TRes Function(Fragment$RepositoryItem) _then;

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
      _then(Fragment$RepositoryItem(
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

class _CopyWithStubImpl$Fragment$RepositoryItem<TRes>
    implements CopyWith$Fragment$RepositoryItem<TRes> {
  _CopyWithStubImpl$Fragment$RepositoryItem(this._res);

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

const fragmentDefinitionRepositoryItem = FragmentDefinitionNode(
  name: NameNode(value: 'RepositoryItem'),
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
                      name: NameNode(value: 'TopicItem'),
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
          name: NameNode(value: 'LanguageItem'),
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
const documentNodeFragmentRepositoryItem = DocumentNode(definitions: [
  fragmentDefinitionRepositoryItem,
  fragmentDefinitionTopicItem,
  fragmentDefinitionLanguageItem,
]);

extension ClientExtension$Fragment$RepositoryItem on graphql.GraphQLClient {
  void writeFragment$RepositoryItem({
    required Fragment$RepositoryItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'RepositoryItem',
            document: documentNodeFragmentRepositoryItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$RepositoryItem? readFragment$RepositoryItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'RepositoryItem',
          document: documentNodeFragmentRepositoryItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$RepositoryItem.fromJson(result);
  }
}

class Fragment$RepositoryItem$repositoryTopics {
  Fragment$RepositoryItem$repositoryTopics({
    this.edges,
    this.$__typename = 'RepositoryTopicConnection',
  });

  factory Fragment$RepositoryItem$repositoryTopics.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$RepositoryItem$repositoryTopics(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$RepositoryItem$repositoryTopics$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$RepositoryItem$repositoryTopics$edges?>? edges;

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
    if (!(other is Fragment$RepositoryItem$repositoryTopics) ||
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

extension UtilityExtension$Fragment$RepositoryItem$repositoryTopics
    on Fragment$RepositoryItem$repositoryTopics {
  CopyWith$Fragment$RepositoryItem$repositoryTopics<
          Fragment$RepositoryItem$repositoryTopics>
      get copyWith => CopyWith$Fragment$RepositoryItem$repositoryTopics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes> {
  factory CopyWith$Fragment$RepositoryItem$repositoryTopics(
    Fragment$RepositoryItem$repositoryTopics instance,
    TRes Function(Fragment$RepositoryItem$repositoryTopics) then,
  ) = _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics;

  factory CopyWith$Fragment$RepositoryItem$repositoryTopics.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics;

  TRes call({
    List<Fragment$RepositoryItem$repositoryTopics$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$RepositoryItem$repositoryTopics$edges?>? Function(
              Iterable<
                  CopyWith$Fragment$RepositoryItem$repositoryTopics$edges<
                      Fragment$RepositoryItem$repositoryTopics$edges>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics<TRes>
    implements CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes> {
  _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics(
    this._instance,
    this._then,
  );

  final Fragment$RepositoryItem$repositoryTopics _instance;

  final TRes Function(Fragment$RepositoryItem$repositoryTopics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RepositoryItem$repositoryTopics(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Fragment$RepositoryItem$repositoryTopics$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$RepositoryItem$repositoryTopics$edges?>? Function(
                  Iterable<
                      CopyWith$Fragment$RepositoryItem$repositoryTopics$edges<
                          Fragment$RepositoryItem$repositoryTopics$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Fragment$RepositoryItem$repositoryTopics$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics<TRes>
    implements CopyWith$Fragment$RepositoryItem$repositoryTopics<TRes> {
  _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics(this._res);

  TRes _res;

  call({
    List<Fragment$RepositoryItem$repositoryTopics$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$RepositoryItem$repositoryTopics$edges {
  Fragment$RepositoryItem$repositoryTopics$edges({
    this.node,
    this.$__typename = 'RepositoryTopicEdge',
  });

  factory Fragment$RepositoryItem$repositoryTopics$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$RepositoryItem$repositoryTopics$edges(
      node: l$node == null
          ? null
          : Fragment$RepositoryItem$repositoryTopics$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$RepositoryItem$repositoryTopics$edges$node? node;

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
    if (!(other is Fragment$RepositoryItem$repositoryTopics$edges) ||
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

extension UtilityExtension$Fragment$RepositoryItem$repositoryTopics$edges
    on Fragment$RepositoryItem$repositoryTopics$edges {
  CopyWith$Fragment$RepositoryItem$repositoryTopics$edges<
          Fragment$RepositoryItem$repositoryTopics$edges>
      get copyWith => CopyWith$Fragment$RepositoryItem$repositoryTopics$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$RepositoryItem$repositoryTopics$edges<TRes> {
  factory CopyWith$Fragment$RepositoryItem$repositoryTopics$edges(
    Fragment$RepositoryItem$repositoryTopics$edges instance,
    TRes Function(Fragment$RepositoryItem$repositoryTopics$edges) then,
  ) = _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics$edges;

  factory CopyWith$Fragment$RepositoryItem$repositoryTopics$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics$edges;

  TRes call({
    Fragment$RepositoryItem$repositoryTopics$edges$node? node,
    String? $__typename,
  });
  CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics$edges<TRes>
    implements CopyWith$Fragment$RepositoryItem$repositoryTopics$edges<TRes> {
  _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics$edges(
    this._instance,
    this._then,
  );

  final Fragment$RepositoryItem$repositoryTopics$edges _instance;

  final TRes Function(Fragment$RepositoryItem$repositoryTopics$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RepositoryItem$repositoryTopics$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$RepositoryItem$repositoryTopics$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node.stub(
            _then(_instance))
        : CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics$edges<TRes>
    implements CopyWith$Fragment$RepositoryItem$repositoryTopics$edges<TRes> {
  _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics$edges(this._res);

  TRes _res;

  call({
    Fragment$RepositoryItem$repositoryTopics$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node<TRes> get node =>
      CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node.stub(_res);
}

class Fragment$RepositoryItem$repositoryTopics$edges$node {
  Fragment$RepositoryItem$repositoryTopics$edges$node({
    required this.topic,
    this.$__typename = 'RepositoryTopic',
  });

  factory Fragment$RepositoryItem$repositoryTopics$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$topic = json['topic'];
    final l$$__typename = json['__typename'];
    return Fragment$RepositoryItem$repositoryTopics$edges$node(
      topic: Fragment$TopicItem.fromJson((l$topic as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$TopicItem topic;

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
    if (!(other is Fragment$RepositoryItem$repositoryTopics$edges$node) ||
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

extension UtilityExtension$Fragment$RepositoryItem$repositoryTopics$edges$node
    on Fragment$RepositoryItem$repositoryTopics$edges$node {
  CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node<
          Fragment$RepositoryItem$repositoryTopics$edges$node>
      get copyWith =>
          CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node<
    TRes> {
  factory CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node(
    Fragment$RepositoryItem$repositoryTopics$edges$node instance,
    TRes Function(Fragment$RepositoryItem$repositoryTopics$edges$node) then,
  ) = _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics$edges$node;

  factory CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics$edges$node;

  TRes call({
    Fragment$TopicItem? topic,
    String? $__typename,
  });
  CopyWith$Fragment$TopicItem<TRes> get topic;
}

class _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics$edges$node<TRes>
    implements
        CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node<TRes> {
  _CopyWithImpl$Fragment$RepositoryItem$repositoryTopics$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$RepositoryItem$repositoryTopics$edges$node _instance;

  final TRes Function(Fragment$RepositoryItem$repositoryTopics$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topic = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RepositoryItem$repositoryTopics$edges$node(
        topic: topic == _undefined || topic == null
            ? _instance.topic
            : (topic as Fragment$TopicItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TopicItem<TRes> get topic {
    final local$topic = _instance.topic;
    return CopyWith$Fragment$TopicItem(local$topic, (e) => call(topic: e));
  }
}

class _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics$edges$node<
        TRes>
    implements
        CopyWith$Fragment$RepositoryItem$repositoryTopics$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$RepositoryItem$repositoryTopics$edges$node(
      this._res);

  TRes _res;

  call({
    Fragment$TopicItem? topic,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TopicItem<TRes> get topic =>
      CopyWith$Fragment$TopicItem.stub(_res);
}

class Fragment$TopicItem {
  Fragment$TopicItem({
    required this.id,
    required this.name,
    this.$__typename = 'Topic',
  });

  factory Fragment$TopicItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$TopicItem(
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
    if (!(other is Fragment$TopicItem) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$TopicItem on Fragment$TopicItem {
  CopyWith$Fragment$TopicItem<Fragment$TopicItem> get copyWith =>
      CopyWith$Fragment$TopicItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TopicItem<TRes> {
  factory CopyWith$Fragment$TopicItem(
    Fragment$TopicItem instance,
    TRes Function(Fragment$TopicItem) then,
  ) = _CopyWithImpl$Fragment$TopicItem;

  factory CopyWith$Fragment$TopicItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TopicItem;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TopicItem<TRes>
    implements CopyWith$Fragment$TopicItem<TRes> {
  _CopyWithImpl$Fragment$TopicItem(
    this._instance,
    this._then,
  );

  final Fragment$TopicItem _instance;

  final TRes Function(Fragment$TopicItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TopicItem(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TopicItem<TRes>
    implements CopyWith$Fragment$TopicItem<TRes> {
  _CopyWithStubImpl$Fragment$TopicItem(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionTopicItem = FragmentDefinitionNode(
  name: NameNode(value: 'TopicItem'),
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
const documentNodeFragmentTopicItem = DocumentNode(definitions: [
  fragmentDefinitionTopicItem,
]);

extension ClientExtension$Fragment$TopicItem on graphql.GraphQLClient {
  void writeFragment$TopicItem({
    required Fragment$TopicItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TopicItem',
            document: documentNodeFragmentTopicItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TopicItem? readFragment$TopicItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TopicItem',
          document: documentNodeFragmentTopicItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TopicItem.fromJson(result);
  }
}

class Fragment$LanguageItem {
  Fragment$LanguageItem({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Language',
  });

  factory Fragment$LanguageItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Fragment$LanguageItem(
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
    if (!(other is Fragment$LanguageItem) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$LanguageItem on Fragment$LanguageItem {
  CopyWith$Fragment$LanguageItem<Fragment$LanguageItem> get copyWith =>
      CopyWith$Fragment$LanguageItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$LanguageItem<TRes> {
  factory CopyWith$Fragment$LanguageItem(
    Fragment$LanguageItem instance,
    TRes Function(Fragment$LanguageItem) then,
  ) = _CopyWithImpl$Fragment$LanguageItem;

  factory CopyWith$Fragment$LanguageItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LanguageItem;

  TRes call({
    String? id,
    String? name,
    String? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LanguageItem<TRes>
    implements CopyWith$Fragment$LanguageItem<TRes> {
  _CopyWithImpl$Fragment$LanguageItem(
    this._instance,
    this._then,
  );

  final Fragment$LanguageItem _instance;

  final TRes Function(Fragment$LanguageItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LanguageItem(
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

class _CopyWithStubImpl$Fragment$LanguageItem<TRes>
    implements CopyWith$Fragment$LanguageItem<TRes> {
  _CopyWithStubImpl$Fragment$LanguageItem(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? color,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionLanguageItem = FragmentDefinitionNode(
  name: NameNode(value: 'LanguageItem'),
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
const documentNodeFragmentLanguageItem = DocumentNode(definitions: [
  fragmentDefinitionLanguageItem,
]);

extension ClientExtension$Fragment$LanguageItem on graphql.GraphQLClient {
  void writeFragment$LanguageItem({
    required Fragment$LanguageItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'LanguageItem',
            document: documentNodeFragmentLanguageItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$LanguageItem? readFragment$LanguageItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LanguageItem',
          document: documentNodeFragmentLanguageItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LanguageItem.fromJson(result);
  }
}

class Query$RepoList {
  Query$RepoList({
    required this.search,
    this.$__typename = 'Query',
  });

  factory Query$RepoList.fromJson(Map<String, dynamic> json) {
    final l$search = json['search'];
    final l$$__typename = json['__typename'];
    return Query$RepoList(
      search:
          Query$RepoList$search.fromJson((l$search as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RepoList$search search;

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
    if (!(other is Query$RepoList) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$RepoList on Query$RepoList {
  CopyWith$Query$RepoList<Query$RepoList> get copyWith =>
      CopyWith$Query$RepoList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RepoList<TRes> {
  factory CopyWith$Query$RepoList(
    Query$RepoList instance,
    TRes Function(Query$RepoList) then,
  ) = _CopyWithImpl$Query$RepoList;

  factory CopyWith$Query$RepoList.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList;

  TRes call({
    Query$RepoList$search? search,
    String? $__typename,
  });
  CopyWith$Query$RepoList$search<TRes> get search;
}

class _CopyWithImpl$Query$RepoList<TRes>
    implements CopyWith$Query$RepoList<TRes> {
  _CopyWithImpl$Query$RepoList(
    this._instance,
    this._then,
  );

  final Query$RepoList _instance;

  final TRes Function(Query$RepoList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepoList(
        search: search == _undefined || search == null
            ? _instance.search
            : (search as Query$RepoList$search),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RepoList$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$RepoList$search(local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$RepoList<TRes>
    implements CopyWith$Query$RepoList<TRes> {
  _CopyWithStubImpl$Query$RepoList(this._res);

  TRes _res;

  call({
    Query$RepoList$search? search,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RepoList$search<TRes> get search =>
      CopyWith$Query$RepoList$search.stub(_res);
}

const documentNodeQueryRepoList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RepoList'),
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
            value: IntValueNode(value: '100'),
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
  fragmentDefinitionRepositoryItem,
  fragmentDefinitionTopicItem,
  fragmentDefinitionLanguageItem,
]);
Query$RepoList _parserFn$Query$RepoList(Map<String, dynamic> data) =>
    Query$RepoList.fromJson(data);
typedef OnQueryComplete$Query$RepoList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$RepoList?,
);

class Options$Query$RepoList extends graphql.QueryOptions<Query$RepoList> {
  Options$Query$RepoList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RepoList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RepoList? onComplete,
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
                    data == null ? null : _parserFn$Query$RepoList(data),
                  ),
          onError: onError,
          document: documentNodeQueryRepoList,
          parserFn: _parserFn$Query$RepoList,
        );

  final OnQueryComplete$Query$RepoList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$RepoList
    extends graphql.WatchQueryOptions<Query$RepoList> {
  WatchOptions$Query$RepoList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RepoList? typedOptimisticResult,
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
          document: documentNodeQueryRepoList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$RepoList,
        );
}

class FetchMoreOptions$Query$RepoList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RepoList({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryRepoList,
        );
}

extension ClientExtension$Query$RepoList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RepoList>> query$RepoList(
          [Options$Query$RepoList? options]) async =>
      await this.query(options ?? Options$Query$RepoList());
  graphql.ObservableQuery<Query$RepoList> watchQuery$RepoList(
          [WatchOptions$Query$RepoList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$RepoList());
  void writeQuery$RepoList({
    required Query$RepoList data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryRepoList)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$RepoList? readQuery$RepoList({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryRepoList)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$RepoList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$RepoList> useQuery$RepoList(
        [Options$Query$RepoList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$RepoList());
graphql.ObservableQuery<Query$RepoList> useWatchQuery$RepoList(
        [WatchOptions$Query$RepoList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$RepoList());

class Query$RepoList$Widget extends graphql_flutter.Query<Query$RepoList> {
  Query$RepoList$Widget({
    widgets.Key? key,
    Options$Query$RepoList? options,
    required graphql_flutter.QueryBuilder<Query$RepoList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$RepoList(),
          builder: builder,
        );
}

class Query$RepoList$search {
  Query$RepoList$search({
    this.edges,
    this.$__typename = 'SearchResultItemConnection',
  });

  factory Query$RepoList$search.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$RepoList$search(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$RepoList$search$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$RepoList$search$edges?>? edges;

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
    if (!(other is Query$RepoList$search) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$RepoList$search on Query$RepoList$search {
  CopyWith$Query$RepoList$search<Query$RepoList$search> get copyWith =>
      CopyWith$Query$RepoList$search(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RepoList$search<TRes> {
  factory CopyWith$Query$RepoList$search(
    Query$RepoList$search instance,
    TRes Function(Query$RepoList$search) then,
  ) = _CopyWithImpl$Query$RepoList$search;

  factory CopyWith$Query$RepoList$search.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList$search;

  TRes call({
    List<Query$RepoList$search$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$RepoList$search$edges?>? Function(
              Iterable<
                  CopyWith$Query$RepoList$search$edges<
                      Query$RepoList$search$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$RepoList$search<TRes>
    implements CopyWith$Query$RepoList$search<TRes> {
  _CopyWithImpl$Query$RepoList$search(
    this._instance,
    this._then,
  );

  final Query$RepoList$search _instance;

  final TRes Function(Query$RepoList$search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepoList$search(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$RepoList$search$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$RepoList$search$edges?>? Function(
                  Iterable<
                      CopyWith$Query$RepoList$search$edges<
                          Query$RepoList$search$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$RepoList$search$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$RepoList$search<TRes>
    implements CopyWith$Query$RepoList$search<TRes> {
  _CopyWithStubImpl$Query$RepoList$search(this._res);

  TRes _res;

  call({
    List<Query$RepoList$search$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$RepoList$search$edges {
  Query$RepoList$search$edges({
    this.node,
    this.$__typename = 'SearchResultItemEdge',
  });

  factory Query$RepoList$search$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges(
      node: l$node == null
          ? null
          : Query$RepoList$search$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RepoList$search$edges$node? node;

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
    if (!(other is Query$RepoList$search$edges) ||
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

extension UtilityExtension$Query$RepoList$search$edges
    on Query$RepoList$search$edges {
  CopyWith$Query$RepoList$search$edges<Query$RepoList$search$edges>
      get copyWith => CopyWith$Query$RepoList$search$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges<TRes> {
  factory CopyWith$Query$RepoList$search$edges(
    Query$RepoList$search$edges instance,
    TRes Function(Query$RepoList$search$edges) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges;

  factory CopyWith$Query$RepoList$search$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges;

  TRes call({
    Query$RepoList$search$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$RepoList$search$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$RepoList$search$edges<TRes>
    implements CopyWith$Query$RepoList$search$edges<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges _instance;

  final TRes Function(Query$RepoList$search$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RepoList$search$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$RepoList$search$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RepoList$search$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$RepoList$search$edges$node.stub(_then(_instance))
        : CopyWith$Query$RepoList$search$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$RepoList$search$edges<TRes>
    implements CopyWith$Query$RepoList$search$edges<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges(this._res);

  TRes _res;

  call({
    Query$RepoList$search$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RepoList$search$edges$node<TRes> get node =>
      CopyWith$Query$RepoList$search$edges$node.stub(_res);
}

class Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node({required this.$__typename});

  factory Query$RepoList$search$edges$node.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "App":
        return Query$RepoList$search$edges$node$$App.fromJson(json);

      case "Discussion":
        return Query$RepoList$search$edges$node$$Discussion.fromJson(json);

      case "Issue":
        return Query$RepoList$search$edges$node$$Issue.fromJson(json);

      case "MarketplaceListing":
        return Query$RepoList$search$edges$node$$MarketplaceListing.fromJson(
            json);

      case "Organization":
        return Query$RepoList$search$edges$node$$Organization.fromJson(json);

      case "PullRequest":
        return Query$RepoList$search$edges$node$$PullRequest.fromJson(json);

      case "Repository":
        return Query$RepoList$search$edges$node$$Repository.fromJson(json);

      case "User":
        return Query$RepoList$search$edges$node$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$RepoList$search$edges$node(
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
    if (!(other is Query$RepoList$search$edges$node) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node
    on Query$RepoList$search$edges$node {
  CopyWith$Query$RepoList$search$edges$node<Query$RepoList$search$edges$node>
      get copyWith => CopyWith$Query$RepoList$search$edges$node(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$RepoList$search$edges$node$$App) app,
    required _T Function(Query$RepoList$search$edges$node$$Discussion)
        discussion,
    required _T Function(Query$RepoList$search$edges$node$$Issue) issue,
    required _T Function(Query$RepoList$search$edges$node$$MarketplaceListing)
        marketplaceListing,
    required _T Function(Query$RepoList$search$edges$node$$Organization)
        organization,
    required _T Function(Query$RepoList$search$edges$node$$PullRequest)
        pullRequest,
    required _T Function(Query$RepoList$search$edges$node$$Repository)
        repository,
    required _T Function(Query$RepoList$search$edges$node$$User) user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "App":
        return app(this as Query$RepoList$search$edges$node$$App);

      case "Discussion":
        return discussion(this as Query$RepoList$search$edges$node$$Discussion);

      case "Issue":
        return issue(this as Query$RepoList$search$edges$node$$Issue);

      case "MarketplaceListing":
        return marketplaceListing(
            this as Query$RepoList$search$edges$node$$MarketplaceListing);

      case "Organization":
        return organization(
            this as Query$RepoList$search$edges$node$$Organization);

      case "PullRequest":
        return pullRequest(
            this as Query$RepoList$search$edges$node$$PullRequest);

      case "Repository":
        return repository(this as Query$RepoList$search$edges$node$$Repository);

      case "User":
        return user(this as Query$RepoList$search$edges$node$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$RepoList$search$edges$node$$App)? app,
    _T Function(Query$RepoList$search$edges$node$$Discussion)? discussion,
    _T Function(Query$RepoList$search$edges$node$$Issue)? issue,
    _T Function(Query$RepoList$search$edges$node$$MarketplaceListing)?
        marketplaceListing,
    _T Function(Query$RepoList$search$edges$node$$Organization)? organization,
    _T Function(Query$RepoList$search$edges$node$$PullRequest)? pullRequest,
    _T Function(Query$RepoList$search$edges$node$$Repository)? repository,
    _T Function(Query$RepoList$search$edges$node$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "App":
        if (app != null) {
          return app(this as Query$RepoList$search$edges$node$$App);
        } else {
          return orElse();
        }

      case "Discussion":
        if (discussion != null) {
          return discussion(
              this as Query$RepoList$search$edges$node$$Discussion);
        } else {
          return orElse();
        }

      case "Issue":
        if (issue != null) {
          return issue(this as Query$RepoList$search$edges$node$$Issue);
        } else {
          return orElse();
        }

      case "MarketplaceListing":
        if (marketplaceListing != null) {
          return marketplaceListing(
              this as Query$RepoList$search$edges$node$$MarketplaceListing);
        } else {
          return orElse();
        }

      case "Organization":
        if (organization != null) {
          return organization(
              this as Query$RepoList$search$edges$node$$Organization);
        } else {
          return orElse();
        }

      case "PullRequest":
        if (pullRequest != null) {
          return pullRequest(
              this as Query$RepoList$search$edges$node$$PullRequest);
        } else {
          return orElse();
        }

      case "Repository":
        if (repository != null) {
          return repository(
              this as Query$RepoList$search$edges$node$$Repository);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$RepoList$search$edges$node$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$RepoList$search$edges$node<TRes> {
  factory CopyWith$Query$RepoList$search$edges$node(
    Query$RepoList$search$edges$node instance,
    TRes Function(Query$RepoList$search$edges$node) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node;

  factory CopyWith$Query$RepoList$search$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepoList$search$edges$node<TRes>
    implements CopyWith$Query$RepoList$search$edges$node<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node _instance;

  final TRes Function(Query$RepoList$search$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepoList$search$edges$node(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepoList$search$edges$node<TRes>
    implements CopyWith$Query$RepoList$search$edges$node<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepoList$search$edges$node$$App
    implements Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node$$App({this.$__typename = 'App'});

  factory Query$RepoList$search$edges$node$$App.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges$node$$App(
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
    if (!(other is Query$RepoList$search$edges$node$$App) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node$$App
    on Query$RepoList$search$edges$node$$App {
  CopyWith$Query$RepoList$search$edges$node$$App<
          Query$RepoList$search$edges$node$$App>
      get copyWith => CopyWith$Query$RepoList$search$edges$node$$App(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges$node$$App<TRes> {
  factory CopyWith$Query$RepoList$search$edges$node$$App(
    Query$RepoList$search$edges$node$$App instance,
    TRes Function(Query$RepoList$search$edges$node$$App) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node$$App;

  factory CopyWith$Query$RepoList$search$edges$node$$App.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node$$App;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepoList$search$edges$node$$App<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$App<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node$$App(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node$$App _instance;

  final TRes Function(Query$RepoList$search$edges$node$$App) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepoList$search$edges$node$$App(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepoList$search$edges$node$$App<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$App<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node$$App(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepoList$search$edges$node$$Discussion
    implements Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node$$Discussion(
      {this.$__typename = 'Discussion'});

  factory Query$RepoList$search$edges$node$$Discussion.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges$node$$Discussion(
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
    if (!(other is Query$RepoList$search$edges$node$$Discussion) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node$$Discussion
    on Query$RepoList$search$edges$node$$Discussion {
  CopyWith$Query$RepoList$search$edges$node$$Discussion<
          Query$RepoList$search$edges$node$$Discussion>
      get copyWith => CopyWith$Query$RepoList$search$edges$node$$Discussion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges$node$$Discussion<TRes> {
  factory CopyWith$Query$RepoList$search$edges$node$$Discussion(
    Query$RepoList$search$edges$node$$Discussion instance,
    TRes Function(Query$RepoList$search$edges$node$$Discussion) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node$$Discussion;

  factory CopyWith$Query$RepoList$search$edges$node$$Discussion.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node$$Discussion;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepoList$search$edges$node$$Discussion<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$Discussion<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node$$Discussion(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node$$Discussion _instance;

  final TRes Function(Query$RepoList$search$edges$node$$Discussion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepoList$search$edges$node$$Discussion(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepoList$search$edges$node$$Discussion<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$Discussion<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node$$Discussion(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepoList$search$edges$node$$Issue
    implements Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node$$Issue({this.$__typename = 'Issue'});

  factory Query$RepoList$search$edges$node$$Issue.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges$node$$Issue(
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
    if (!(other is Query$RepoList$search$edges$node$$Issue) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node$$Issue
    on Query$RepoList$search$edges$node$$Issue {
  CopyWith$Query$RepoList$search$edges$node$$Issue<
          Query$RepoList$search$edges$node$$Issue>
      get copyWith => CopyWith$Query$RepoList$search$edges$node$$Issue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges$node$$Issue<TRes> {
  factory CopyWith$Query$RepoList$search$edges$node$$Issue(
    Query$RepoList$search$edges$node$$Issue instance,
    TRes Function(Query$RepoList$search$edges$node$$Issue) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node$$Issue;

  factory CopyWith$Query$RepoList$search$edges$node$$Issue.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node$$Issue;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepoList$search$edges$node$$Issue<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$Issue<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node$$Issue(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node$$Issue _instance;

  final TRes Function(Query$RepoList$search$edges$node$$Issue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepoList$search$edges$node$$Issue(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepoList$search$edges$node$$Issue<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$Issue<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node$$Issue(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepoList$search$edges$node$$MarketplaceListing
    implements Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node$$MarketplaceListing(
      {this.$__typename = 'MarketplaceListing'});

  factory Query$RepoList$search$edges$node$$MarketplaceListing.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges$node$$MarketplaceListing(
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
    if (!(other is Query$RepoList$search$edges$node$$MarketplaceListing) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node$$MarketplaceListing
    on Query$RepoList$search$edges$node$$MarketplaceListing {
  CopyWith$Query$RepoList$search$edges$node$$MarketplaceListing<
          Query$RepoList$search$edges$node$$MarketplaceListing>
      get copyWith =>
          CopyWith$Query$RepoList$search$edges$node$$MarketplaceListing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges$node$$MarketplaceListing<
    TRes> {
  factory CopyWith$Query$RepoList$search$edges$node$$MarketplaceListing(
    Query$RepoList$search$edges$node$$MarketplaceListing instance,
    TRes Function(Query$RepoList$search$edges$node$$MarketplaceListing) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node$$MarketplaceListing;

  factory CopyWith$Query$RepoList$search$edges$node$$MarketplaceListing.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node$$MarketplaceListing;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepoList$search$edges$node$$MarketplaceListing<TRes>
    implements
        CopyWith$Query$RepoList$search$edges$node$$MarketplaceListing<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node$$MarketplaceListing(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node$$MarketplaceListing _instance;

  final TRes Function(Query$RepoList$search$edges$node$$MarketplaceListing)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepoList$search$edges$node$$MarketplaceListing(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepoList$search$edges$node$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$RepoList$search$edges$node$$MarketplaceListing<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node$$MarketplaceListing(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepoList$search$edges$node$$Organization
    implements Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node$$Organization(
      {this.$__typename = 'Organization'});

  factory Query$RepoList$search$edges$node$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges$node$$Organization(
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
    if (!(other is Query$RepoList$search$edges$node$$Organization) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node$$Organization
    on Query$RepoList$search$edges$node$$Organization {
  CopyWith$Query$RepoList$search$edges$node$$Organization<
          Query$RepoList$search$edges$node$$Organization>
      get copyWith => CopyWith$Query$RepoList$search$edges$node$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges$node$$Organization<TRes> {
  factory CopyWith$Query$RepoList$search$edges$node$$Organization(
    Query$RepoList$search$edges$node$$Organization instance,
    TRes Function(Query$RepoList$search$edges$node$$Organization) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node$$Organization;

  factory CopyWith$Query$RepoList$search$edges$node$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node$$Organization;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepoList$search$edges$node$$Organization<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$Organization<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node$$Organization(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node$$Organization _instance;

  final TRes Function(Query$RepoList$search$edges$node$$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepoList$search$edges$node$$Organization(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepoList$search$edges$node$$Organization<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$Organization<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node$$Organization(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepoList$search$edges$node$$PullRequest
    implements Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node$$PullRequest(
      {this.$__typename = 'PullRequest'});

  factory Query$RepoList$search$edges$node$$PullRequest.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges$node$$PullRequest(
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
    if (!(other is Query$RepoList$search$edges$node$$PullRequest) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node$$PullRequest
    on Query$RepoList$search$edges$node$$PullRequest {
  CopyWith$Query$RepoList$search$edges$node$$PullRequest<
          Query$RepoList$search$edges$node$$PullRequest>
      get copyWith => CopyWith$Query$RepoList$search$edges$node$$PullRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges$node$$PullRequest<TRes> {
  factory CopyWith$Query$RepoList$search$edges$node$$PullRequest(
    Query$RepoList$search$edges$node$$PullRequest instance,
    TRes Function(Query$RepoList$search$edges$node$$PullRequest) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node$$PullRequest;

  factory CopyWith$Query$RepoList$search$edges$node$$PullRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node$$PullRequest;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepoList$search$edges$node$$PullRequest<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$PullRequest<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node$$PullRequest(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node$$PullRequest _instance;

  final TRes Function(Query$RepoList$search$edges$node$$PullRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepoList$search$edges$node$$PullRequest(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepoList$search$edges$node$$PullRequest<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$PullRequest<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node$$PullRequest(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$RepoList$search$edges$node$$Repository
    implements Fragment$RepositoryItem, Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node$$Repository({
    required this.id,
    required this.nameWithOwner,
    this.description,
    required this.stargazerCount,
    required this.viewerHasStarred,
    required this.repositoryTopics,
    this.primaryLanguage,
    this.$__typename = 'Repository',
  });

  factory Query$RepoList$search$edges$node$$Repository.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$nameWithOwner = json['nameWithOwner'];
    final l$description = json['description'];
    final l$stargazerCount = json['stargazerCount'];
    final l$viewerHasStarred = json['viewerHasStarred'];
    final l$repositoryTopics = json['repositoryTopics'];
    final l$primaryLanguage = json['primaryLanguage'];
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges$node$$Repository(
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
    if (!(other is Query$RepoList$search$edges$node$$Repository) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node$$Repository
    on Query$RepoList$search$edges$node$$Repository {
  CopyWith$Query$RepoList$search$edges$node$$Repository<
          Query$RepoList$search$edges$node$$Repository>
      get copyWith => CopyWith$Query$RepoList$search$edges$node$$Repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges$node$$Repository<TRes> {
  factory CopyWith$Query$RepoList$search$edges$node$$Repository(
    Query$RepoList$search$edges$node$$Repository instance,
    TRes Function(Query$RepoList$search$edges$node$$Repository) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node$$Repository;

  factory CopyWith$Query$RepoList$search$edges$node$$Repository.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node$$Repository;

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

class _CopyWithImpl$Query$RepoList$search$edges$node$$Repository<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$Repository<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node$$Repository(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node$$Repository _instance;

  final TRes Function(Query$RepoList$search$edges$node$$Repository) _then;

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
      _then(Query$RepoList$search$edges$node$$Repository(
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

class _CopyWithStubImpl$Query$RepoList$search$edges$node$$Repository<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$Repository<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node$$Repository(this._res);

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

class Query$RepoList$search$edges$node$$User
    implements Query$RepoList$search$edges$node {
  Query$RepoList$search$edges$node$$User({this.$__typename = 'User'});

  factory Query$RepoList$search$edges$node$$User.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$RepoList$search$edges$node$$User(
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
    if (!(other is Query$RepoList$search$edges$node$$User) ||
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

extension UtilityExtension$Query$RepoList$search$edges$node$$User
    on Query$RepoList$search$edges$node$$User {
  CopyWith$Query$RepoList$search$edges$node$$User<
          Query$RepoList$search$edges$node$$User>
      get copyWith => CopyWith$Query$RepoList$search$edges$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RepoList$search$edges$node$$User<TRes> {
  factory CopyWith$Query$RepoList$search$edges$node$$User(
    Query$RepoList$search$edges$node$$User instance,
    TRes Function(Query$RepoList$search$edges$node$$User) then,
  ) = _CopyWithImpl$Query$RepoList$search$edges$node$$User;

  factory CopyWith$Query$RepoList$search$edges$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$RepoList$search$edges$node$$User;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$RepoList$search$edges$node$$User<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$User<TRes> {
  _CopyWithImpl$Query$RepoList$search$edges$node$$User(
    this._instance,
    this._then,
  );

  final Query$RepoList$search$edges$node$$User _instance;

  final TRes Function(Query$RepoList$search$edges$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$RepoList$search$edges$node$$User(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$RepoList$search$edges$node$$User<TRes>
    implements CopyWith$Query$RepoList$search$edges$node$$User<TRes> {
  _CopyWithStubImpl$Query$RepoList$search$edges$node$$User(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
