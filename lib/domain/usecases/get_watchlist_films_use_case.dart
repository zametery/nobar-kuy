import 'package:dicoding_expert/domain/entities/film_entity.dart';
import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetWatchlistFilmsUseCase {
  final FilmRepository _repository;

  const GetWatchlistFilmsUseCase(this._repository);

  Future<DataState<List<FilmEntity>>> call(FilmType type) async =>
      await _repository.getWatchlistFilms(type);
}
