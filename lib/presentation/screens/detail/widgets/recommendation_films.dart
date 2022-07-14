import 'package:dicoding_expert/presentation/blocs/film/film_bloc.dart';
import 'package:dicoding_expert/presentation/screens/home/widgets/film_list.dart';
import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendationFilms extends StatelessWidget {
  final FilmType type;
  const RecommendationFilms({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Recommendation Films'),
        const SizedBox(height: 8),
        BlocBuilder<FilmBloc, FilmState>(
          builder: (context, state) {
            return state.recommendationFilmsState.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              failed: () => const Center(child: Text('Failed')),
              orElse: () => const Center(child: Text('Error')),
              success: () => FilmList(
                films: state.recommendationFilms,
                type: type,
              ),
            );
          },
        )
      ],
    );
  }
}
