import 'package:dicoding_expert/mapper/film_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

import '../dummy_data/film_data_dummy.dart';

void main() => testMapper();

void testMapper() {
  late FilmMapper mapper;

  setUp(() => mapper = FilmMapper());
  group('Mapper Test -', () {
    test('Given film model, When try map to entity, Then return success', () {
      final dataModel = FilmDataDummy.filmModels[0];

      final mapToEntity = mapper.modelToEntity(dataModel);

      expect(dataModel.id, mapToEntity.id);
    });

    test('Given film entity, When try map to model, Then return success ', () {
      final dataEntity = FilmDataDummy.filmEntities[0];

      final mapToModel = mapper.entityToModel(dataEntity);

      expect(mapToModel.id, mapToModel.id);
    });
  });
}
