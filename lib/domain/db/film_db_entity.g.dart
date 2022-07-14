// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_db_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FilmDbEntityAdapter extends TypeAdapter<FilmDbEntity> {
  @override
  final int typeId = 1;

  @override
  FilmDbEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FilmDbEntity()
      ..id = fields[0] as int
      ..title = fields[1] as String
      ..overview = fields[2] as String
      ..posterPath = fields[3] as String?
      ..voteAverage = fields[4] as double
      ..type = fields[5] as String;
  }

  @override
  void write(BinaryWriter writer, FilmDbEntity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.overview)
      ..writeByte(3)
      ..write(obj.posterPath)
      ..writeByte(4)
      ..write(obj.voteAverage)
      ..writeByte(5)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilmDbEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
