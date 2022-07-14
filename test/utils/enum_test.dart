import 'package:dicoding_expert/utils/enum.dart';
import 'package:flutter_test/flutter_test.dart';

void main() => testEnum();

void testEnum() {
  group('Enum Test -', () {
    group('Given film type', () {
      test('Movie. When call toString, Then should return Movie', () {
        expect(FilmType.movie.toString(), 'Movie');
      });
      test('TV. When call toString, Then should return TV', () {
        expect(FilmType.tv.toString(), 'TV');
      });
    });

    group('Given film type', () {
      test('Movie. When call isMovieFilms, Then should return true', () {
        const movieFilmType = FilmType.movie;
        expect(movieFilmType.isMovieFilms(), isTrue);
      });
      test('TV. When call isTvFilms, Then should return true', () {
        const tvFilmType = FilmType.tv;
        expect(tvFilmType.isTvFilms(), isTrue);
      });
    });
  });
}
