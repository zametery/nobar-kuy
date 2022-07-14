import 'package:dicoding_expert/domain/entities/film_entity.dart';
import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddFilmToWatchlistUseCase {
  final FilmRepository _repository;

  const AddFilmToWatchlistUseCase(this._repository);

  Future<DataState<bool>> call(FilmType type, FilmEntity film) async =>
      await _repository.addFilmToWatchlist(type, film);
}
