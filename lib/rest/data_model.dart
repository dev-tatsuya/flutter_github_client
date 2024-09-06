import 'package:flutter_github_client/domain_model.dart';
import 'package:flutter_github_client/util.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryListResponseData {
  RepositoryListResponseData({required this.items});

  factory RepositoryListResponseData.fromJson(Map<String, dynamic> json) =>
      _$RepositoryListResponseDataFromJson(json);

  List<RepositoryResponseData> items;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryResponseData {
  RepositoryResponseData({
    required this.nodeId,
    required this.fullName,
    required this.stargazersCount,
    required this.topics,
    this.description,
    this.language,
  });

  factory RepositoryResponseData.fromJson(Map<String, dynamic> json) =>
      _$RepositoryResponseDataFromJson(json);

  String nodeId;
  String fullName;
  String? description;
  int stargazersCount;
  String? language;
  List<String> topics;

  Repository toDomain() {
    final (owner, name) = separate(fullName);

    return Repository(
      id: nodeId,
      name: name,
      owner: owner,
      description: description,
      viewerHasStarred: false,
      starredCount: stargazersCount,
      topics: topics.take(5).toList(),
      language: language == null
          ? null
          : Language(
              name: language!,
              color: _toHexColorCode(language!),
            ),
    );
  }
}

String? _toHexColorCode(String languageName) {
  return _languageColorPalette[languageName];
}

// Extract from https://github.com/ozh/github-colors/blob/master/colors.json
const _languageColorPalette = <String, String>{
  'Dart': '#00B4AB',
  'C++': '#f34b7d',
  'Python': '#3572A5',
  'Java': '#b07219',
  'Fortran': '#4d41b1',
};
