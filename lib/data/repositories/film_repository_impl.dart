import 'package:dicoding_expert/data/repositories/src/film_local_datasource.dart';
import 'package:dicoding_expert/data/repositories/src/film_remote_datasource.dart';
import 'package:dicoding_expert/domain/entities/film_entity.dart';
import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:dicoding_expert/mapper/film_mapper.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:dicoding_expert/state/data/data_state.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FilmRepository)
class FilmRepositoryImpl implements FilmRepository {
  final FilmRemoteDataSource _remoteDataSource;
  final FilmLocalDataSource _localDataSource;
  final FilmMapper _mapper;

  const FilmRepositoryImpl(
      this._localDataSource, this._mapper, this._remoteDataSource);

  @override
  Future<DataState<bool>> addFilmToWatchlist(
    FilmType type,
    FilmEntity film,
  ) async {
    return await _localDataSource.addFilmToWatchlist(
      type,
      _mapper.entityToModel(film),
    );
  }

  @override
  Future<DataState<FilmEntity>> getDetailFilm(FilmType type, int id) async {
    final result = await _remoteDataSource.getDetailFilm(type, id);

    return result.when(
      success: (data) => DataState.success(data: _mapper.modelToEntity(data)),
      error: (message, data, exception, stackTrace, statusCode) {
        return DataState.error(
          data: _mapper.modelToEntity(data),
          message: message,
          exception: exception,
          stackTrace: stackTrace,
          statusCode: statusCode,
        );
      },
    );
  }

  @override
  Future<DataState<bool>> getHasExistInWatchlist(FilmType type, int id) async =>
      await _localDataSource.getHasExistInWatchlist(type, id);

  @override
  Future<DataState<List<FilmEntity>>> getNowPlayingFilms(FilmType type) async {
    final result = await _remoteDataSource.getNowPlayingFilms(type);

    return result.when(
      success: (data) => DataState.success(
        data: data.map((e) => _mapper.modelToEntity(e)).toList(),
      ),
      error: (message, data, exception, stackTrace, statusCode) {
        return DataState.error(
          data: data?.map((e) => _mapper.modelToEntity(e)).toList(),
          message: message,
          exception: exception,
          stackTrace: stackTrace,
          statusCode: statusCode,
        );
      },
    );
  }

  @override
  Future<DataState<List<FilmEntity>>> getPopularFilms(FilmType type) async {
    final result = await _remoteDataSource.getPopularFilms(type);

    return result.when(
      success: (data) => DataState.success(
        data: data.map((e) => _mapper.modelToEntity(e)).toList(),
      ),
      error: (message, data, exception, stackTrace, statusCode) {
        return DataState.error(
          data: data?.map((e) => _mapper.modelToEntity(e)).toList(),
          message: message,
          exception: exception,
          stackTrace: stackTrace,
          statusCode: statusCode,
        );
      },
    );
  }

  @override
  Future<DataState<List<FilmEntity>>> getRecommendationFilms(
      FilmType type, int id) async {
    final result = await _remoteDataSource.getRecommendationFilms(type, id);

    return result.when(
      success: (data) => DataState.success(
        data: data.map((e) => _mapper.modelToEntity(e)).toList(),
      ),
      error: (message, data, exception, stackTrace, statusCode) {
        return DataState.error(
          data: data?.map((e) => _mapper.modelToEntity(e)).toList(),
          message: message,
          exception: exception,
          stackTrace: stackTrace,
          statusCode: statusCode,
        );
      },
    );
  }

  @override
  Future<DataState<List<FilmEntity>>> getTopRatedFilms(FilmType type) async {
    final result = await _remoteDataSource.getTopRatedFilms(type);

    return result.when(
      success: (data) => DataState.success(
        data: data.map((e) => _mapper.modelToEntity(e)).toList(),
      ),
      error: (message, data, exception, stackTrace, statusCode) {
        return DataState.error(
          data: data?.map((e) => _mapper.modelToEntity(e)).toList(),
          message: message,
          exception: exception,
          stackTrace: stackTrace,
          statusCode: statusCode,
        );
      },
    );
  }

  @override
  Future<DataState<List<FilmEntity>>> getWatchlistFilms(FilmType type) async {
    final result = await _localDataSource.getWatchlistFilms(type);

    return result.when(
      success: (data) => DataState.success(
        data: data.map((e) => _mapper.modelToEntity(e)).toList(),
      ),
      error: (message, data, exception, stackTrace, statusCode) {
        return DataState.error(
          data: data?.map((e) => _mapper.modelToEntity(e)).toList(),
          message: message,
          exception: exception,
          stackTrace: stackTrace,
          statusCode: statusCode,
        );
      },
    );
  }

  @override
  Future<DataState<bool>> removeFilmFromWatchlist(
    FilmType type,
    int id,
  ) async {
    return await _localDataSource.removeFilmFromWatchlist(type, id);
  }

  @override
  Future<DataState<List<FilmEntity>>> searchFilms(
    FilmType type,
    String query,
  ) async {
    final result = await _remoteDataSource.searchFilms(type, query);

    return result.when(
      success: (data) => DataState.success(
        data: data.map((e) => _mapper.modelToEntity(e)).toList(),
      ),
      error: (message, data, exception, stackTrace, statusCode) {
        return DataState.error(
          data: data?.map((e) => _mapper.modelToEntity(e)).toList(),
          message: message,
          exception: exception,
          stackTrace: stackTrace,
          statusCode: statusCode,
        );
      },
    );
  }
}
