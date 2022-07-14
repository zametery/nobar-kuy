import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RemoveFilmFromWatchlistUseCase {
  final FilmRepository _repository;

  const RemoveFilmFromWatchlistUseCase(this._repository);

  Future<DataState<bool>> call(FilmType type, int id) async =>
      await _repository.removeFilmFromWatchlist(type, id);
}
