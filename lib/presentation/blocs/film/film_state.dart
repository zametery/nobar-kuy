part of 'film_bloc.dart';

@freezed
class FilmState with _$FilmState {
  const factory FilmState({
    // Watchlist
    required bool isExistedInWatchlist,
    required List<FilmEntity> watchlistFilms,
    required ViewState watchlistFilmsState,

    // Movie
    required ViewState nowPlayingMovieFilmsState,
    required List<FilmEntity> nowPlayingMovieFilms,
    required ViewState popularMovieFilmsState,
    required List<FilmEntity> popularMovieFilms,
    required ViewState topRatedMovieFilmsState,
    required List<FilmEntity> topRatedMovieFilms,

    // TV
    required ViewState nowPlayingTvFilmsState,
    required List<FilmEntity> nowPlayingTvFilms,
    required ViewState popularTvFilmsState,
    required List<FilmEntity> popularTvFilms,
    required ViewState topRatedTvFilmsState,
    required List<FilmEntity> topRatedTvFilms,

    // Recommendation
    required ViewState recommendationFilmsState,
    required List<FilmEntity> recommendationFilms,

    // Search
    required ViewState searchFilmsState,
    required String searchQuery,
    required List<FilmEntity> searchFilms,

    // HomePage drawer index
    required int homePageDrawerIndex,
    required int watchlistTabIndex,

    // Detail
    required ViewState filmDetailState,
    required FilmEntity filmDetail,

    // PerCategory
    required List<FilmEntity> listFilmsPerCategory,
    required FilmType listFilmsPerCategoryType,
    required FilmSections filmSectionType,
  }) = _FilmState;

  factory FilmState.initial() => FilmState(
        // Watchlist
        isExistedInWatchlist: false,
        watchlistFilmsState: const ViewState.initial(),
        watchlistFilms: [],

        // PerCategory
        listFilmsPerCategory: [],
        listFilmsPerCategoryType: FilmType.movie,
        filmSectionType: FilmSections.nowPlaying,

        // Movie
        nowPlayingMovieFilms: [],
        nowPlayingMovieFilmsState: const ViewState.initial(),
        popularMovieFilms: [],
        popularMovieFilmsState: const ViewState.initial(),
        topRatedMovieFilms: [],
        topRatedMovieFilmsState: const ViewState.initial(),

        // TV
        nowPlayingTvFilms: [],
        nowPlayingTvFilmsState: const ViewState.initial(),
        popularTvFilms: [],
        popularTvFilmsState: const ViewState.initial(),
        topRatedTvFilms: [],
        topRatedTvFilmsState: const ViewState.initial(),

        // Search
        searchFilms: [],
        searchFilmsState: const ViewState.initial(),
        searchQuery: '',

        // Detail
        filmDetail: FilmEntity(
          id: 0,
          title: '',
          voteAverage: 0,
          posterPath: '',
          overview: '',
        ),
        filmDetailState: const ViewState.initial(),

        // Recommendation
        recommendationFilmsState: const ViewState.initial(),
        recommendationFilms: [],

        // HomePage drawer index
        homePageDrawerIndex: 0,
        watchlistTabIndex: 0,
      );
}
