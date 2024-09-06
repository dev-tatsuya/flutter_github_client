import 'package:dio/dio.dart';
import 'package:flutter_github_client/main.dart';
import 'package:flutter_github_client/rest/data_model.dart';
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
  Future<RepositoryListResponseData> getRepositoryList(
    @Query('q') String query,
    @Query('per_page') int perPage,
  );

  @GET('/repos/{owner}/{repo}')
  Future<RepositoryResponseData> getRepoDetail(
    @Path() String owner,
    @Path() String repo,
  );

  @GET('/user/starred')
  Future<List<RepositoryResponseData>> getStarredRepoList(
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
