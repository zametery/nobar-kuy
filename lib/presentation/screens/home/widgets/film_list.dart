import 'package:dicoding_expert/domain/entities/film_entity.dart';
import 'package:dicoding_expert/presentation/blocs/film/film_bloc.dart';
import 'package:dicoding_expert/presentation/screens/detail/detail_screen.dart';
import 'package:dicoding_expert/presentation/widgets/film_card.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmList extends StatelessWidget {
  final List<FilmEntity> films;
  final FilmType type;
  const FilmList({
    Key? key,
    required this.films,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: films.length,
        itemBuilder: (context, index) {
          final item = films[index];
          return GestureDetector(
            onTap: () {
              context.read<FilmBloc>()
                ..add(GetWatchlistEvent(type: type))
                ..add(WatchlistCheckEvent(thisFilm: item))
                ..add(GetRecommendationFilmsEvent(type: type, id: item.id));
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(film: item, type: type),
                ),
              );
            },
            child: FilmCardHorizontal(film: item),
          );
        },
      ),
    );
  }
}
