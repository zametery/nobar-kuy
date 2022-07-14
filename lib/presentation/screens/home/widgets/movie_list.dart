import 'package:dicoding_expert/presentation/blocs/film/film_bloc.dart';
import 'package:dicoding_expert/presentation/screens/home/widgets/film_label.dart';
import 'package:dicoding_expert/presentation/screens/home/widgets/film_list.dart';
import 'package:dicoding_expert/presentation/screens/per_category/per_category_screen.dart';
import 'package:dicoding_expert/utils/constants.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FilmLabel(
          label: FilmSections.nowPlaying.toString(),
          onTapSeeAll: () => _onTapSeeAll(context, FilmSections.nowPlaying),
        ),
        BlocBuilder<FilmBloc, FilmState>(
          builder: (context, state) {
            return state.nowPlayingMovieFilmsState.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              failed: () => const Center(child: Text('Failed')),
              orElse: () => const Center(child: Text('Error')),
              success: () => FilmList(
                films: state.nowPlayingMovieFilms,
                type: FilmType.movie,
              ),
            );
          },
        ),
        const SizedBox(height: 12),
        FilmLabel(
          label: FilmSections.topRated.toString(),
          onTapSeeAll: () => _onTapSeeAll(context, FilmSections.topRated),
        ),
        BlocBuilder<FilmBloc, FilmState>(
          builder: (context, state) {
            return state.topRatedMovieFilmsState.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              failed: () => const Center(child: Text('Failed')),
              orElse: () => const Center(child: Text('Error')),
              success: () => FilmList(
                films: state.topRatedMovieFilms,
                type: FilmType.movie,
              ),
            );
          },
        ),
        const SizedBox(height: 12),
        FilmLabel(
          label: FilmSections.popular.toString(),
          onTapSeeAll: () => _onTapSeeAll(context, FilmSections.popular),
        ),
        BlocBuilder<FilmBloc, FilmState>(
          builder: (context, state) {
            return state.popularMovieFilmsState.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              failed: () => const Center(child: Text('Failed')),
              orElse: () => const Center(child: Text('Error')),
              success: () => FilmList(
                films: state.popularMovieFilms,
                type: FilmType.movie,
              ),
            );
          },
        ),
      ],
    );
  }

  void _onTapSeeAll(BuildContext context, FilmSections filmSection) {
    const type = FilmType.movie;

    films() {
      if (filmSection.isNowPlaying) {
        return context.read<FilmBloc>().state.nowPlayingMovieFilms;
      } else if (filmSection.isTopRated) {
        return context.read<FilmBloc>().state.topRatedMovieFilms;
      } else {
        return context.read<FilmBloc>().state.popularMovieFilms;
      }
    }

    context.read<FilmBloc>().add(GoToListPageEvent(
          filmType: FilmType.movie,
          filmSectionType: filmSection,
          films: films(),
        ));

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PerCategoryScreen(
            type: type,
            filmSection: filmSection,
          ),
        ));
  }
}
