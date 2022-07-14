import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/domain/usecases.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/film_data_dummy.dart';
import '../../film_test.mocks.dart';

void main() => testAddFilmToWatchlistUseCase();

void testAddFilmToWatchlistUseCase() {
  late FilmRepository repository;
  late AddFilmToWatchlistUseCase useCase;

  setUp(() {
    repository = MockFilmRepository();
    useCase = AddFilmToWatchlistUseCase(repository);
  });

  group('Add Film To Watchlist Use Case -', () {
    group('Given film type and a film.', () {
      group('When call addFilmToWatchlistUseCase, ', () {
        test('Then it return success', () async {
          when(repository.addFilmToWatchlist(
                  FilmType.movie, FilmDataDummy.filmEntities[0]))
              .thenAnswer((_) async => const DataState.success(data: true));

          final result =
              await useCase.call(FilmType.movie, FilmDataDummy.filmEntities[0]);

          result.when(
            success: (data) => expect(data, isTrue),
            error: (_, __, ___, _____, ______) {},
          );
        });
      });
    });
  });
}
