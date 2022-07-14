import 'package:flutter_test/flutter_test.dart';

import '../../dummy_data/film_data_dummy.dart';

void main() {
  test(
      'Given Film Models, When the models get mapped into json, Then return success',
      () {
    final result = FilmDataDummy.filmModels.map((e) => e.toJson()).toList();

    expect(result.length, FilmDataDummy.filmModels.length);
  });
}
