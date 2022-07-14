import 'package:dicoding_expert/presentation/blocs/film/film_bloc.dart';
import 'package:dicoding_expert/presentation/screens/detail/detail_screen.dart';
import 'package:dicoding_expert/presentation/widgets/film_card.dart';
import 'package:dicoding_expert/utils/constants.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PerCategoryScreen extends StatelessWidget {
  final FilmType type;
  final FilmSections filmSection;
  const PerCategoryScreen({
    Key? key,
    required this.type,
    required this.filmSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${filmSection.toString()} ${type.toString()}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<FilmBloc, FilmState>(
          builder: (context, state) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: state.listFilmsPerCategory.length,
              itemBuilder: (context, index) {
                final film = state.listFilmsPerCategory[index];
                return GestureDetector(
                    onTap: () {
                      context.read<FilmBloc>()
                        ..add(WatchlistCheckEvent(thisFilm: film))
                        ..add(GetRecommendationFilmsEvent(
                            type: type, id: film.id));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(film: film, type: type),
                        ),
                      );
                    },
                    child: FilmCardVertical(film: film));
              },
            );
          },
        ),
      ),
    );
  }
}
