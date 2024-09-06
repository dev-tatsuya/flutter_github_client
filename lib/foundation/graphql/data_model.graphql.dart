import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

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
