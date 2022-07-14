import 'package:dicoding_expert/utils/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() => testConstants();

void testConstants() {
  group('Given film sections enum,', () {
    test('When nowPlaying convert toString Then it return Now Playing', () {
      expect(FilmSections.nowPlaying.toString(), 'Now Playing');
    });

    test('When topRated convert toString Then it return Top Rated', () {
      expect(FilmSections.topRated.toString(), 'Top Rated');
    });

    test('When popular convert toString Then it return Popular', () {
      expect(FilmSections.popular.toString(), 'Popular');
    });

    test('When nowPlaying checked using isNowPlaying Then it return true', () {
      const nowPlaying = FilmSections.nowPlaying;
      expect(nowPlaying.isNowPlaying, isTrue);
    });

    test('When topRated checked using isTopRated Then it return true', () {
      const topRated = FilmSections.topRated;
      expect(topRated.isTopRated, isTrue);
    });

    test('When Popular checked using ispopular Then it return true', () {
      const popular = FilmSections.popular;
      expect(popular.ispopular, isTrue);
    });
  });
}
