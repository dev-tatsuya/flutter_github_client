// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryListData _$RepositoryListDataFromJson(Map<String, dynamic> json) =>
    RepositoryListData(
      items: (json['items'] as List<dynamic>)
          .map((e) => RepositoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RepositoryListDataToJson(RepositoryListData instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

RepositoryData _$RepositoryDataFromJson(Map<String, dynamic> json) =>
    RepositoryData(
      nodeId: json['node_id'] as String,
      fullName: json['full_name'] as String,
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$RepositoryDataToJson(RepositoryData instance) =>
    <String, dynamic>{
      'node_id': instance.nodeId,
      'full_name': instance.fullName,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'language': instance.language,
      'topics': instance.topics,
    };

RepositoryDetailData _$RepositoryDetailDataFromJson(
        Map<String, dynamic> json) =>
    RepositoryDetailData(
      nodeId: json['node_id'] as String,
      fullName: json['full_name'] as String,
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String?,
      language: json['language'] as String?,
      openIssuesCount: (json['open_issues_count'] as num?)?.toInt(),
      license: json['license'] == null
          ? null
          : LicenseData.fromJson(json['license'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RepositoryDetailDataToJson(
        RepositoryDetailData instance) =>
    <String, dynamic>{
      'node_id': instance.nodeId,
      'full_name': instance.fullName,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'language': instance.language,
      'topics': instance.topics,
      'open_issues_count': instance.openIssuesCount,
      'license': instance.license,
    };

LicenseData _$LicenseDataFromJson(Map<String, dynamic> json) => LicenseData(
      spdxId: json['spdx_id'] as String?,
    );

Map<String, dynamic> _$LicenseDataToJson(LicenseData instance) =>
    <String, dynamic>{
      'spdx_id': instance.spdxId,
    };
