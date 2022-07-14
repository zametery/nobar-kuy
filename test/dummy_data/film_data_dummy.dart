import 'dart:convert';

import 'package:dicoding_expert/data/models/film_model.dart';
import 'package:dicoding_expert/domain/entities/film_entity.dart';

import 'read_json_helper.dart';

class FilmDataDummy {
  static Map<String, dynamic> filmMapResponse = jsonDecode(
    readJsonHelper('dummy_data/json/film_dummy.json'),
  );

  static List<FilmModel> filmModels = (filmMapResponse['results'] as List)
      .map((e) => FilmModel.fromJson(e))
      .toList();

  static List<FilmEntity> filmEntities = (filmModels)
      .map((e) => FilmEntity(
            id: e.id,
            title: e.title ?? e.name ?? '',
            voteAverage: e.voteAverage,
            posterPath: e.posterPath ?? '',
            overview: e.overview,
          ))
      .toList();
}
