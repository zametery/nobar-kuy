import 'package:dicoding_expert/domain/entities/film_entity.dart';
import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDetailFilmUseCase {
  final FilmRepository _repository;

  const GetDetailFilmUseCase(this._repository);

  Future<DataState<FilmEntity>> call(FilmType type, int id) async =>
      await _repository.getDetailFilm(type, id);
}
