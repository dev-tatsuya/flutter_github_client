import 'package:dio/dio.dart';
import 'package:flutter_github_client/main.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rest.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [],
)
RestClient rest(RestRef ref) {
  final dio = Dio(
    BaseOptions(
      headers: {
        'Authorization': 'Bearer $pat',
        'X-Github-Next-Global-ID': '1',
      },
    ),
  );

  return RestClient(dio);
}

@RestApi(baseUrl: 'https://api.github.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/search/repositories')
  Future<RepoListData> getRepoList(
    @Query('q') String query,
  );

  @GET('/repos/{owner}/{repo}')
  Future<RepoData> getRepoDetail(
    @Path() String owner,
    @Path() String repo,
  );

  @GET('/user/starred')
  Future<List<RepoData>> getStarredRepoList(
    @Query('direction') String direction,
  );

  @GET('/user/starred/{owner}/{repo}')
  Future<void> viewerHasStarred(
    @Path() String owner,
    @Path() String repo,
  );

  @PUT('/user/starred/{owner}/{repo}')
  Future<void> star(
    @Path() String owner,
    @Path() String repo,
  );

  @DELETE('/user/starred/{owner}/{repo}')
  Future<void> unstar(
    @Path() String owner,
    @Path() String repo,
  );
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RepoListData {
  RepoListData({required this.items});

  factory RepoListData.fromJson(Map<String, dynamic> json) =>
      _$RepoListDataFromJson(json);

  List<RepoData> items;

  Map<String, dynamic> toJson() => _$RepoListDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RepoData {
  RepoData({
    required this.nodeId,
    required this.fullName,
    required this.stargazersCount,
    required this.topics,
    this.description,
    this.language,
  });

  factory RepoData.fromJson(Map<String, dynamic> json) =>
      _$RepoDataFromJson(json);

  String nodeId;
  String fullName;
  String? description;
  int stargazersCount;
  String? language;
  List<String> topics;

  Map<String, dynamic> toJson() => _$RepoDataToJson(this);
}
