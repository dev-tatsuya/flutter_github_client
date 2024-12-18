import 'package:dio/dio.dart';
import 'package:flutter_github_client/main.dart';
import 'package:flutter_github_client/provider/service/api/model/rest_data_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rest_client.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
RestClient restClient(Ref ref) {
  if (pat.isEmpty) {
    throw UnimplementedError('main.dart で PAT を設定してください');
  }

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
  Future<RepositoryListData> getRepositoryList(
    @Query('q') String query,
    @Query('per_page') int perPage,
  );

  @GET('/user/starred')
  Future<List<RepositoryData>> getStarredRepositoryList(
    @Query('direction') String direction,
  );

  @GET('/repos/{owner}/{repo}')
  Future<RepositoryDetailData> getRepository(
    @Path() String owner,
    @Path('repo') String name,
  );

  @PUT('/user/starred/{owner}/{repo}')
  Future<void> star(
    @Path() String owner,
    @Path('repo') String name,
  );

  @DELETE('/user/starred/{owner}/{repo}')
  Future<void> unstar(
    @Path() String owner,
    @Path('repo') String name,
  );
}
