import 'package:dicoding_expert/data/repositories/film_repository_impl.dart';
import 'package:dicoding_expert/data/repositories/src/film_local_datasource.dart';
import 'package:dicoding_expert/data/repositories/src/film_remote_datasource.dart';
import 'package:dicoding_expert/mapper/film_mapper.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/film_data_dummy.dart';
import '../../dummy_data/film_exception_dummy.dart';
import '../../film_test.mocks.dart';

void main() => testRepository();

void testRepository() {
  late FilmRepositoryImpl repositoryImpl;
  late FilmRemoteDataSource remoteDataSource;
  late FilmLocalDataSource localDataSource;
  late FilmMapper mapper;

  setUp(() {
    remoteDataSource = MockFilmRemoteDataSource();
    localDataSource = MockFilmLocalDataSource();
    mapper = FilmMapper();

    repositoryImpl = FilmRepositoryImpl(
      localDataSource,
      mapper,
      remoteDataSource,
    );
  });

  group('Repository Impl Test -', () {
    group('Get Now Playing -', () {
      group('Given film type.', () {
        group('When success call to get now playing film from repository, ',
            () {
          test('then return success', () async {
            when(remoteDataSource.getNowPlayingFilms(FilmType.movie))
                .thenAnswer(
              (_) async => DataState.success(data: FilmDataDummy.filmModels),
            );

            final result =
                await repositoryImpl.getNowPlayingFilms(FilmType.movie);

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed call to get now playing film from repository, ', () {
          test('then return failed', () async {
            when(remoteDataSource.getNowPlayingFilms(FilmType.movie))
                .thenAnswer(
              (_) async =>
                  const DataState.error(message: EXCEPTION_MESSAGE, data: []),
            );

            final result =
                await repositoryImpl.getNowPlayingFilms(FilmType.movie);

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data, isEmpty);
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });

    group('Get Top Rated -', () {
      group('Given film type.', () {
        group('When success call to get top rated film from repository, ', () {
          test('then return success', () async {
            when(remoteDataSource.getTopRatedFilms(FilmType.movie)).thenAnswer(
              (_) async => DataState.success(data: FilmDataDummy.filmModels),
            );

            final result =
                await repositoryImpl.getTopRatedFilms(FilmType.movie);

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed call to get top rated film from repository, ', () {
          test('then return failed', () async {
            when(remoteDataSource.getTopRatedFilms(FilmType.movie)).thenAnswer(
              (_) async =>
                  const DataState.error(message: EXCEPTION_MESSAGE, data: []),
            );

            final result =
                await repositoryImpl.getTopRatedFilms(FilmType.movie);

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data, isEmpty);
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });

    group('Get Popular -', () {
      group('Given film type.', () {
        group('When success call to get popular film from repository, ', () {
          test('then return success', () async {
            when(remoteDataSource.getPopularFilms(FilmType.movie)).thenAnswer(
              (_) async => DataState.success(data: FilmDataDummy.filmModels),
            );

            final result = await repositoryImpl.getPopularFilms(FilmType.movie);

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed call to get popular film from repository, ', () {
          test('then return failed', () async {
            when(remoteDataSource.getPopularFilms(FilmType.movie)).thenAnswer(
              (_) async =>
                  const DataState.error(message: EXCEPTION_MESSAGE, data: []),
            );

            final result = await repositoryImpl.getPopularFilms(FilmType.movie);

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data, isEmpty);
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });

    group('Get Search -', () {
      const query = 'a';
      group('Given film type and query.', () {
        group('When success call to get search film from repository, ', () {
          test('then return success', () async {
            when(remoteDataSource.searchFilms(FilmType.movie, query))
                .thenAnswer(
              (_) async => DataState.success(data: FilmDataDummy.filmModels),
            );

            final result =
                await repositoryImpl.searchFilms(FilmType.movie, query);

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed call to get search film from repository, ', () {
          test('then return failed', () async {
            when(remoteDataSource.searchFilms(FilmType.movie, query))
                .thenAnswer(
              (_) async =>
                  const DataState.error(message: EXCEPTION_MESSAGE, data: []),
            );

            final result =
                await repositoryImpl.searchFilms(FilmType.movie, query);

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data, isEmpty);
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });

    group('Get Recommendations -', () {
      group('Given film type and film ID.', () {
        group('When success call to get recommendation film from repository, ',
            () {
          test('then return success', () async {
            when(remoteDataSource.getRecommendationFilms(FilmType.movie, 1))
                .thenAnswer(
              (_) async => DataState.success(data: FilmDataDummy.filmModels),
            );

            final result =
                await repositoryImpl.getRecommendationFilms(FilmType.movie, 1);

            result.when(
                success: (data) => expect(
                      data[0].id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed call to get recommendation film from repository, ',
            () {
          test('then return failed', () async {
            when(remoteDataSource.getRecommendationFilms(FilmType.movie, 1))
                .thenAnswer(
              (_) async =>
                  const DataState.error(message: EXCEPTION_MESSAGE, data: []),
            );

            final result =
                await repositoryImpl.getRecommendationFilms(FilmType.movie, 1);

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data, isEmpty);
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });

    group('Get Detail -', () {
      group('Given film type and film ID.', () {
        group('When success call to get detail film from repository, ', () {
          test('then return success', () async {
            when(remoteDataSource.getDetailFilm(FilmType.movie, 1)).thenAnswer(
              (_) async => DataState.success(data: FilmDataDummy.filmModels[0]),
            );

            final result =
                await repositoryImpl.getDetailFilm(FilmType.movie, 1);

            result.when(
                success: (data) => expect(
                      data.id,
                      FilmDataDummy.filmModels[0].id,
                    ),
                error: (_, __, ___, ____, _____) {});
          });
        });

        group('When failed call to get detail film from repository, ', () {
          test('then return failed', () async {
            when(remoteDataSource.getDetailFilm(FilmType.movie, 1)).thenAnswer(
              (_) async =>
                  const DataState.error(message: EXCEPTION_MESSAGE, data: null),
            );

            final result =
                await repositoryImpl.getDetailFilm(FilmType.movie, 1);

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data?.id, equals(-1));
                expect(data?.title, equals(''));
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });

    group('Get Has Exist In Watchlist -', () {
      group('Given film type and Film ID.', () {
        group('When success get film with equal ID from given film, ', () {
          test('Then it return success', () async {
            when(localDataSource.getHasExistInWatchlist(
              FilmType.movie,
              1,
            )).thenAnswer((_) async => const DataState.success(data: true));

            final result = await repositoryImpl.getHasExistInWatchlist(
              FilmType.movie,
              1,
            );

            result.when(
              success: (data) => expect(data, isTrue),
              error: (_, __, ___, ____, _____) {},
            );
          });
        });

        group('When success get film with equal ID from given film, ', () {
          test('Then it return failed', () async {
            when(localDataSource.getHasExistInWatchlist(
              FilmType.movie,
              1,
            )).thenAnswer((_) async => const DataState.error(data: false));
            final result = await repositoryImpl.getHasExistInWatchlist(
              FilmType.movie,
              1,
            );

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data, isFalse);
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });

    group('Get Watchlist -', () {
      group('Given film type,', () {
        group('When success get data from watchlist, ', () {
          test('Then it return List of films', () async {
            when(localDataSource.getWatchlistFilms(FilmType.movie)).thenAnswer(
                (_) async => DataState.success(data: FilmDataDummy.filmModels));

            final result =
                await repositoryImpl.getWatchlistFilms(FilmType.movie);

            result.when(
              success: (data) => expect(
                data[0].id,
                FilmDataDummy.filmEntities[0].id,
              ),
              error: (_, __, ___, ____, _____) {},
            );
          });
        });

        group('When failed get data from watchlist, ', () {
          test('Then it return null', () async {
            when(localDataSource.getWatchlistFilms(FilmType.movie)).thenAnswer(
              (_) async => DataState.error(data: FilmDataDummy.filmModels),
            );

            final result =
                await repositoryImpl.getWatchlistFilms(FilmType.movie);

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });

    group('Remove Film from Watchlist -', () {
      group('Given film type and film id,', () {
        group('When success remove data from watchlist, ', () {
          test('Then it return success', () async {
            when(localDataSource.removeFilmFromWatchlist(FilmType.movie, 1))
                .thenAnswer((_) async => const DataState.success(data: true));

            final result =
                await repositoryImpl.removeFilmFromWatchlist(FilmType.movie, 1);

            result.when(
              success: (data) => expect(data, isTrue),
              error: (_, __, ___, ____, _____) {},
            );
          });
        });

        group('When failed remove data from watchlist, ', () {
          test('Then it return failed', () async {
            when(localDataSource.removeFilmFromWatchlist(FilmType.movie, 1))
                .thenAnswer(
              (_) async => const DataState.error(data: false),
            );

            final result =
                await repositoryImpl.removeFilmFromWatchlist(FilmType.movie, 1);

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data, isFalse);
                expect(message, EXCEPTION_MESSAGE);
              },
            );
          });
        });
      });
    });
  });
}
