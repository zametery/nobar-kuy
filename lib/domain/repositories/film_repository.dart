import 'package:dicoding_expert/domain/entities/film_entity.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:dicoding_expert/utils/enum.dart';

abstract class FilmRepository {
  // Films
  Future<DataState<List<FilmEntity>>> getNowPlayingFilms(FilmType type);
  Future<DataState<List<FilmEntity>>> getPopularFilms(FilmType type);
  Future<DataState<List<FilmEntity>>> getTopRatedFilms(FilmType type);
  Future<DataState<FilmEntity>> getDetailFilm(FilmType type, int id);
  Future<DataState<List<FilmEntity>>> getRecommendationFilms(
    FilmType type,
    int id,
  );
  Future<DataState<List<FilmEntity>>> searchFilms(FilmType type, String query);

  // Watchlist
  Future<DataState<List<FilmEntity>>> getWatchlistFilms(FilmType type);
  Future<DataState<bool>> addFilmToWatchlist(FilmType type, FilmEntity film);
  Future<DataState<bool>> getHasExistInWatchlist(FilmType type, int id);
  Future<DataState<bool>> removeFilmFromWatchlist(FilmType type, int id);
}
