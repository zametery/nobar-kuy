import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/domain/usecases.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/film_data_dummy.dart';
import '../../film_test.mocks.dart';

void main() => testGetPopularFilmsUseCase();

void testGetPopularFilmsUseCase() {
  late FilmRepository repository;
  late GetPopularFilmsUseCase useCase;

  setUp(() {
    repository = MockFilmRepository();
    useCase = GetPopularFilmsUseCase(repository);
  });

  group('Get Popular Use Case -', () {
    group('Given film type.', () {
      group('When call getPopularFilmsUseCase, ', () {
        test('Then it return success', () async {
          when(repository.getPopularFilms(FilmType.movie)).thenAnswer(
              (_) async => DataState.success(data: FilmDataDummy.filmEntities));

          final result = await useCase.call(FilmType.movie);

          result.when(
            success: (data) =>
                expect(data[0].id, FilmDataDummy.filmEntities[0].id),
            error: (_, __, ___, _____, ______) {},
          );
        });
      });
    });
  });
}
