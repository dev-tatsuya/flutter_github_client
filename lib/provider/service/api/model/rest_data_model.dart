import 'package:flutter_github_client/domain/model/language.dart';
import 'package:flutter_github_client/domain/model/repository.dart';
import 'package:flutter_github_client/ui/repository/util.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rest_data_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryListData {
  RepositoryListData({required this.items});

  factory RepositoryListData.fromJson(Map<String, dynamic> json) =>
      _$RepositoryListDataFromJson(json);

  List<RepositoryData> items;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryData {
  RepositoryData({
    required this.nodeId,
    required this.fullName,
    required this.stargazersCount,
    required this.topics,
    this.description,
    this.language,
  });

  factory RepositoryData.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDataFromJson(json);

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

@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryDetailData {
  RepositoryDetailData({
    required this.nodeId,
    required this.fullName,
    required this.stargazersCount,
    required this.topics,
    this.description,
    this.language,
    this.openIssuesCount,
    this.license,
  });

  factory RepositoryDetailData.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDetailDataFromJson(json);

  String nodeId;
  String fullName;
  String? description;
  int stargazersCount;
  String? language;
  List<String> topics;
  int? openIssuesCount;
  LicenseData? license;

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
      issueCount: openIssuesCount ?? 0,
      licenseName: license?.spdxId,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LicenseData {
  LicenseData({required this.spdxId});

  factory LicenseData.fromJson(Map<String, dynamic> json) =>
      _$LicenseDataFromJson(json);

  String? spdxId;
}

String? _toHexColorCode(String languageName) {
  return _languageColorPalette[languageName];
}

/// 言語カラーコード対応表
///
/// GraphQL では Language の Color を取得することができたが、
/// REST では Color を取得する方法が見当たらなかったので、静的な対応表を用意している。
/// See also: https://github.com/ozh/github-colors/blob/master/colors.json
const _languageColorPalette = <String, String>{
  'Dart': '#00B4AB',
  'C++': '#f34b7d',
  'Python': '#3572A5',
  'Java': '#b07219',
  'Fortran': '#4d41b1',
};
