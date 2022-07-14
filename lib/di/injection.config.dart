// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/repositories/film_repository_impl.dart' as _i11;
import '../data/repositories/src/film_local_datasource.dart' as _i7;
import '../data/repositories/src/film_remote_datasource.dart' as _i9;
import '../domain/repositories/film_repository.dart' as _i10;
import '../domain/usecases.dart' as _i6;
import '../domain/usecases/add_film_to_watchlist_use_case.dart' as _i21;
import '../domain/usecases/get_detail_film_use_case.dart' as _i12;
import '../domain/usecases/get_has_exist_in_watchlist_use_case.dart' as _i13;
import '../domain/usecases/get_now_playing_film_use_case.dart' as _i14;
import '../domain/usecases/get_popular_films_use_case.dart' as _i15;
import '../domain/usecases/get_recommendation_films_use_case.dart' as _i16;
import '../domain/usecases/get_top_rated_films_use_case.dart' as _i17;
import '../domain/usecases/get_watchlist_films_use_case.dart' as _i18;
import '../domain/usecases/remove_film_from_watchlist_use_case.dart' as _i19;
import '../domain/usecases/search_films_use_case.dart' as _i20;
import '../mapper/film_mapper.dart' as _i8;
import '../presentation/blocs/film/film_bloc.dart' as _i5;
import 'modules/injection_modules.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectionModules = _$InjectionModules();
  gh.lazySingleton<_i3.Box<dynamic>>(() => injectionModules.box);
  await gh.lazySingletonAsync<_i4.Dio>(() => injectionModules.client,
      preResolve: true);
  gh.lazySingleton<_i5.FilmBloc>(() => _i5.FilmBloc(
      get<_i6.AddFilmToWatchlistUseCase>(),
      get<_i6.GetDetailFilmUseCase>(),
      get<_i6.GetHasExistInWatchlistUseCase>(),
      get<_i6.GetNowPlayingFilmsUseCase>(),
      get<_i6.GetPopularFilmsUseCase>(),
      get<_i6.GetRecommendationFilmUseCase>(),
      get<_i6.GetTopRatedFilmUseCase>(),
      get<_i6.GetWatchlistFilmsUseCase>(),
      get<_i6.RemoveFilmFromWatchlistUseCase>(),
      get<_i6.SearchFilmUseCase>()));
  gh.lazySingleton<_i7.FilmLocalDataSource>(
      () => _i7.FilmLocalDataSource(get<_i3.Box<dynamic>>()));
  gh.lazySingleton<_i8.FilmMapper>(() => _i8.FilmMapper());
  gh.lazySingleton<_i9.FilmRemoteDataSource>(
      () => _i9.FilmRemoteDataSource(get<_i4.Dio>()));
  gh.lazySingleton<_i10.FilmRepository>(() => _i11.FilmRepositoryImpl(
      get<_i7.FilmLocalDataSource>(),
      get<_i8.FilmMapper>(),
      get<_i9.FilmRemoteDataSource>()));
  gh.lazySingleton<_i12.GetDetailFilmUseCase>(
      () => _i12.GetDetailFilmUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i13.GetHasExistInWatchlistUseCase>(
      () => _i13.GetHasExistInWatchlistUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i14.GetNowPlayingFilmsUseCase>(
      () => _i14.GetNowPlayingFilmsUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i15.GetPopularFilmsUseCase>(
      () => _i15.GetPopularFilmsUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i16.GetRecommendationFilmUseCase>(
      () => _i16.GetRecommendationFilmUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i17.GetTopRatedFilmUseCase>(
      () => _i17.GetTopRatedFilmUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i18.GetWatchlistFilmsUseCase>(
      () => _i18.GetWatchlistFilmsUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i19.RemoveFilmFromWatchlistUseCase>(
      () => _i19.RemoveFilmFromWatchlistUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i20.SearchFilmUseCase>(
      () => _i20.SearchFilmUseCase(get<_i10.FilmRepository>()));
  gh.lazySingleton<_i21.AddFilmToWatchlistUseCase>(
      () => _i21.AddFilmToWatchlistUseCase(get<_i10.FilmRepository>()));
  return get;
}

class _$InjectionModules extends _i22.InjectionModules {}
