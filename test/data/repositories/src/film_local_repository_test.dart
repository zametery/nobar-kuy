import 'package:dicoding_expert/data/repositories/src/film_local_datasource.dart';
import 'package:dicoding_expert/domain/db/film_db_entity.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/film_data_dummy.dart';
import '../../../dummy_data/film_exception_dummy.dart';
import '../../../film_test.mocks.dart';

void main() => testFilmLocalDataSource();

void testFilmLocalDataSource() {
  late Box box;
  late FilmLocalDataSource filmLocalDataSource;
  final filmModel = FilmDataDummy.filmModels[0];

  setUp(() {
    box = MockBox();
    filmLocalDataSource = FilmLocalDataSource(box);
  });

  group('Local Repository Test-', () {
    group('Add to Watchlist -', () {
      group('Given film type and data model.', () {
        group('When success add film to watchlist, ', () {
          test('Then it return success', () async {
            when(box.put(any, any)).thenAnswer((_) async => 1);
            final result = await filmLocalDataSource.addFilmToWatchlist(
              FilmType.movie,
              filmModel,
            );

            result.when(
              success: (data) => expect(data, isTrue),
              error: (_, __, ___, ____, _____) {},
            );
          });
        });

        group('When failed add film to watchlist, ', () {
          test('Then it return failed', () async {
            when(box.put(any, any)).thenThrow(Exception());
            final result = await filmLocalDataSource.addFilmToWatchlist(
              FilmType.movie,
              filmModel,
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
            when(box.values).thenAnswer((_) => [
                  FilmDbEntity()
                    ..id = filmModel.id
                    ..title = filmModel.name ?? filmModel.title ?? ''
                    ..overview = filmModel.overview
                    ..posterPath = filmModel.posterPath
                    ..voteAverage = filmModel.voteAverage
                    ..type = FilmType.movie.toString(),
                ]);

            final result = await filmLocalDataSource.getWatchlistFilms(
              FilmType.movie,
            );

            result.when(
              success: (data) => expect(data[0].id, filmModel.id),
              error: (_, __, ___, ____, _____) {},
            );
          });
        });

        group('When failed get data from watchlist, ', () {
          test('Then it return null', () async {
            when(box.values).thenThrow(Exception());
            final result = await filmLocalDataSource.getWatchlistFilms(
              FilmType.movie,
            );

            result.when(
              success: (_) {},
              error: (message, data, exception, stackTrace, statusCode) {
                expect(data, isNull);
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
            when(box.delete(any)).thenAnswer((_) async => 1);
            final result = await filmLocalDataSource.removeFilmFromWatchlist(
                FilmType.movie, 1);
            result.when(
              success: (data) => expect(data, isTrue),
              error: (_, __, ___, ____, _____) {},
            );
          });
        });

        group('When failed remove data from watchlist, ', () {
          test('Then it return failed', () async {
            when(box.delete(any)).thenThrow(Exception());
            final result = await filmLocalDataSource.removeFilmFromWatchlist(
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

    group('Get Has Exist Film in Watchlist -', () {
      group('Given film type and film id,', () {
        group('When success check film to watchlist, ', () {
          test('Then it return true', () async {
            when(box.containsKey(any)).thenAnswer((_) => true);
            final result = await filmLocalDataSource.getHasExistInWatchlist(
              FilmType.movie,
              1,
            );
            result.when(
              success: (data) => expect(data, isTrue),
              error: (_, __, ___, ____, _____) {},
            );
          });
        });

        group('When failed check film to  watchlist, ', () {
          test('Then it return failed', () async {
            when(box.containsKey(any)).thenThrow(Exception());
            final result = await filmLocalDataSource.getHasExistInWatchlist(
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
  });
}
