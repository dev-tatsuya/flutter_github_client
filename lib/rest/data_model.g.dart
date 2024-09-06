// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryListResponseData _$RepositoryListResponseDataFromJson(
        Map<String, dynamic> json) =>
    RepositoryListResponseData(
      items: (json['items'] as List<dynamic>)
          .map(
              (e) => RepositoryResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RepositoryListResponseDataToJson(
        RepositoryListResponseData instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

RepositoryResponseData _$RepositoryResponseDataFromJson(
        Map<String, dynamic> json) =>
    RepositoryResponseData(
      nodeId: json['node_id'] as String,
      fullName: json['full_name'] as String,
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$RepositoryResponseDataToJson(
        RepositoryResponseData instance) =>
    <String, dynamic>{
      'node_id': instance.nodeId,
      'full_name': instance.fullName,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'language': instance.language,
      'topics': instance.topics,
    };
