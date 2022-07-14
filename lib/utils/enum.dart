import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 2)
enum FilmType {
  @HiveField(0)
  movie,
  @HiveField(1)
  tv;

  @override
  String toString() {
    switch (this) {
      case FilmType.movie:
        return 'Movie';
      case FilmType.tv:
        return 'TV';
    }
  }

  String endpoint() {
    switch (this) {
      case FilmType.movie:
        return '/movie';
      case FilmType.tv:
        return '/tv';
    }
  }

  bool isTvFilms() => this == FilmType.tv;
  bool isMovieFilms() => this == FilmType.movie;
}
