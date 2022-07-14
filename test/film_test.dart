import 'package:dicoding_expert/data/repositories/src/film_local_datasource.dart';
import 'package:dicoding_expert/data/repositories/src/film_remote_datasource.dart';
import 'package:dicoding_expert/domain/repositories/film_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';

import 'data/repositories/src/film_local_repository_test.dart';
import 'data/repositories/src/film_remote_repository_test.dart';
import 'domain/repositories/film_repository_test.dart';
import 'domain/usecases/add_film_to_watchlist_use_case_test.dart';
import 'domain/usecases/get_detail_film_use_case_test.dart';
import 'domain/usecases/get_has_exist_in_watchlist_use_case_test.dart';
import 'domain/usecases/get_now_playing_film_use_case_test.dart';
import 'domain/usecases/get_popular_films_use_case_test.dart';
import 'domain/usecases/get_recommendation_films_use_case_test.dart';
import 'domain/usecases/get_top_rated_films_use_case_test.dart';
import 'domain/usecases/get_watchlist_films_use_case_test.dart';
import 'domain/usecases/remove_film_from_watchlist_use_case_test.dart';
import 'domain/usecases/search_films_use_case_test.dart';
import 'mapper/film_mapper_test.dart';
import 'utils/constants_test.dart';
import 'utils/enum_test.dart';

@GenerateMocks([
  Box,
  FilmRepository,
  FilmRemoteDataSource,
  FilmLocalDataSource,
])
void main() {
  testFilmRemoteRepository();
  testFilmLocalDataSource();
  testRepository();
  testMapper();
  testEnum();
  testConstants();

  testAddFilmToWatchlistUseCase();
  testSearchFilmUseCase();
  testGetDetailFilmUseCase();
  testGetNowPlayingUseCase();
  testGetPopularFilmsUseCase();
  testGetTopRatedFilmsUseCase();
  testGetWatchlistFilmsUseCase();
  testGetHasExistInWatchlistUseCase();
  testGetRecommendationFilmsUseCase();
  testRemoveFilmFromWatchlistUseCase();
}
