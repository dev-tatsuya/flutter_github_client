class Repository {
  Repository({
    required this.id,
    required this.name,
    required this.owner,
    required this.description,
    required this.viewerHasStarred,
    required this.starredCount,
    required this.topics,
    required this.language,
  });

  final String id;
  final String name;
  final String owner;
  final String? description;
  final bool viewerHasStarred;
  final int starredCount;
  final List<String> topics;
  final Language? language;

  String get nameWithOwner => '$owner/$name';

  Repository copyWith({
    String? id,
    String? name,
    String? owner,
    String? description,
    bool? viewerHasStarred,
    int? starredCount,
    List<String>? topics,
    Language? language,
  }) {
    return Repository(
      id: id ?? this.id,
      name: name ?? this.name,
      owner: owner ?? this.owner,
      description: description ?? this.description,
      viewerHasStarred: viewerHasStarred ?? this.viewerHasStarred,
      starredCount: starredCount ?? this.starredCount,
      topics: topics ?? this.topics,
      language: language ?? this.language,
    );
  }
}

class Language {
  Language({
    required this.name,
    required this.color,
  });

  final String name;
  final String? color;
}
