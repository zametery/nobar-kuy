// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmModel _$FilmModelFromJson(Map<String, dynamic> json) => FilmModel(
      id: json['id'] as int,
      name: json['name'] as String?,
      title: json['title'] as String?,
      voteAverage: (json['vote_average'] as num).toDouble(),
      posterPath: json['poster_path'] as String?,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$FilmModelToJson(FilmModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
    };
