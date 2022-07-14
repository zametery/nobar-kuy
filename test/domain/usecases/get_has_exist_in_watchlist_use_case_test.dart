import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/domain/usecases.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../film_test.mocks.dart';

void main() => testGetHasExistInWatchlistUseCase();

void testGetHasExistInWatchlistUseCase() {
  late FilmRepository repository;
  late GetHasExistInWatchlistUseCase useCase;

  setUp(() {
    repository = MockFilmRepository();
    useCase = GetHasExistInWatchlistUseCase(repository);
  });

  group('Get Has Exist In Watchlist Use Case -', () {
    group('Given film type and a film ID.', () {
      group('When call getHasExistInWatchlistUseCase, ', () {
        test('Then it return success', () async {
          when(repository.getHasExistInWatchlist(FilmType.movie, 1))
              .thenAnswer((_) async => const DataState.success(data: true));

          final result = await useCase.call(FilmType.movie, 1);

          result.when(
            success: (data) => expect(data, isTrue),
            error: (_, __, ___, _____, ______) {},
          );
        });
      });
    });
  });
}
