import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/domain/usecases.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/film_data_dummy.dart';
import '../../film_test.mocks.dart';

void main() => testGetDetailFilmUseCase();

void testGetDetailFilmUseCase() {
  late FilmRepository repository;
  late GetDetailFilmUseCase useCase;

  setUp(() {
    repository = MockFilmRepository();
    useCase = GetDetailFilmUseCase(repository);
  });

  group('Get Detail Use Case -', () {
    group('Given film type and a film ID.', () {
      group('When call getDetailFilmUseCase, ', () {
        test('Then it return success', () async {
          when(repository.getDetailFilm(FilmType.movie, 1)).thenAnswer(
              (_) async =>
                  DataState.success(data: FilmDataDummy.filmEntities[0]));

          final result = await useCase.call(FilmType.movie, 1);

          result.when(
            success: (data) =>
                expect(data.id, FilmDataDummy.filmEntities[0].id),
            error: (_, __, ___, _____, ______) {},
          );
        });
      });
    });
  });
}
