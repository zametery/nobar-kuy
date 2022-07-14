import 'package:dicoding_expert/data/repositories/src/film_remote_datasource.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:dicoding_expert/utils/http_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../dummy_data/film_data_dummy.dart';

void main() => testFilmRemoteRepository();

void testFilmRemoteRepository() {
  late Dio client;
  late DioAdapter adapter;
  late FilmRemoteDataSource filmRemoteDataSource;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    client = await HttpConfig.client();
    adapter = DioAdapter(dio: client);
    filmRemoteDataSource = FilmRemoteDataSource(client);
  });

  group('Remote Repository Test -', () {
    group('Get Now Playing -', () {
      group('Given film type.', () {
        group('When success fetch now playing film to remote, ', () {
          test('then return success', () async {
            adapter.onGet(
              '/movie/now_playing',
              (server) => server.reply(
                200,
                FilmDataDummy.filmMapResponse,
              ),
            );
            final result =
                await filmRemoteDataSource.getNowPlayingFilms(FilmType.movie);

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed fetch now playing film to remote, ', () {
          test('then it return failed', () async {
            adapter.onGet(
              '/movie/now_playing',
              (server) => server.throws(
                200,
                DioError(
                  requestOptions: RequestOptions(
                    path: '/movie/now_playing',
                  ),
                ),
              ),
            );

            final result =
                await filmRemoteDataSource.getNowPlayingFilms(FilmType.movie);

            result.when(
                success: (_) {},
                error: (message, data, exception, stackTrace, statusCode) {
                  expect(data, isNull);
                });
          });
        });
      });
    });

    group('Get Popular -', () {
      group('Given film type.', () {
        group('When success fetch popular film to remote, ', () {
          test('then return success', () async {
            adapter.onGet(
              '/movie/popular',
              (server) => server.reply(
                200,
                FilmDataDummy.filmMapResponse,
              ),
            );
            final result =
                await filmRemoteDataSource.getPopularFilms(FilmType.movie);

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed fetch popular film to remote, ', () {
          test('then it return failed', () async {
            adapter.onGet(
              '/movie/popular',
              (server) => server.throws(
                200,
                DioError(
                  requestOptions: RequestOptions(
                    path: '/movie/popular',
                  ),
                ),
              ),
            );

            final result =
                await filmRemoteDataSource.getPopularFilms(FilmType.movie);

            result.when(
                success: (_) {},
                error: (message, data, exception, stackTrace, statusCode) {
                  expect(data, isNull);
                });
          });
        });
      });
    });

    group('Get Top Rated -', () {
      group('Given film type.', () {
        group('When success fetch top rated film to remote, ', () {
          test('then return success', () async {
            adapter.onGet(
              '/movie/top_rated',
              (server) => server.reply(
                200,
                FilmDataDummy.filmMapResponse,
              ),
            );
            final result =
                await filmRemoteDataSource.getTopRatedFilms(FilmType.movie);

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed fetch top rated film to remote, ', () {
          test('then it return failed', () async {
            adapter.onGet(
              '/movie/top_rated',
              (server) => server.throws(
                200,
                DioError(
                  requestOptions: RequestOptions(
                    path: '/movie/top_rated',
                  ),
                ),
              ),
            );

            final result =
                await filmRemoteDataSource.getTopRatedFilms(FilmType.movie);

            result.when(
                success: (_) {},
                error: (message, data, exception, stackTrace, statusCode) {
                  expect(data, isNull);
                });
          });
        });
      });
    });

    group('Get Recommendation -', () {
      group('Given film type and film ID.', () {
        group('When success fetch recommendation film to remote, ', () {
          test('then return success', () async {
            adapter.onGet(
              '/movie/1/recommendations',
              (server) => server.reply(
                200,
                FilmDataDummy.filmMapResponse,
              ),
            );
            final result = await filmRemoteDataSource.getRecommendationFilms(
              FilmType.movie,
              1,
            );

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed fetch recommendation film to remote, ', () {
          test('then it return failed', () async {
            adapter.onGet(
              '/movie/1/recommendations',
              (server) => server.throws(
                200,
                DioError(
                  requestOptions: RequestOptions(
                    path: '/movie/1/recommendations',
                  ),
                ),
              ),
            );

            final result = await filmRemoteDataSource.getRecommendationFilms(
              FilmType.movie,
              1,
            );

            result.when(
                success: (_) {},
                error: (message, data, exception, stackTrace, statusCode) {
                  expect(data, isNull);
                });
          });
        });
      });
    });

    group('Get Search -', () {
      const query = 'a';
      group('Given film type and query.', () {
        group('When success fetch search film to remote, ', () {
          test('then return success', () async {
            adapter.onGet(
              '/search/movie?query=$query',
              (server) => server.reply(
                200,
                FilmDataDummy.filmMapResponse,
              ),
            );
            final result = await filmRemoteDataSource.searchFilms(
              FilmType.movie,
              query,
            );

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed fetch search film to remote, ', () {
          test('then it return failed', () async {
            adapter.onGet(
              '/search/movie?query=$query',
              (server) => server.throws(
                200,
                DioError(
                  requestOptions: RequestOptions(
                    path: '/search/movie?query=$query',
                  ),
                ),
              ),
            );

            final result = await filmRemoteDataSource.searchFilms(
              FilmType.movie,
              query,
            );

            result.when(
                success: (_) {},
                error: (message, data, exception, stackTrace, statusCode) {
                  expect(data, isNull);
                });
          });
        });
      });
    });

    group('Get Detail -', () {
      group('Given film type and film ID.', () {
        group('When success fetch detail film to remote, ', () {
          test('then return success', () async {
            adapter.onGet(
              '/tv/1',
              (server) => server.reply(
                200,
                FilmDataDummy.filmMapResponse['results'][0],
              ),
            );
            final result = await filmRemoteDataSource.getDetailFilm(
              FilmType.tv,
              1,
            );

            result.when(
                success: (data) => expect(
                      data.id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed fetch detail film to remote, ', () {
          test('then it return failed', () async {
            adapter.onGet(
              '/tv/1',
              (server) => server.throws(
                200,
                DioError(
                  requestOptions: RequestOptions(
                    path: '/tv/1',
                  ),
                ),
              ),
            );

            final result = await filmRemoteDataSource.getDetailFilm(
              FilmType.tv,
              1,
            );

            result.when(
                success: (_) {},
                error: (message, data, exception, stackTrace, statusCode) {
                  expect(data, isNull);
                });
          });
        });
      });
    });
  });
}
