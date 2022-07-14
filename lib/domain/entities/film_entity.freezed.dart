// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'film_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilmEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get voteAverage => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmEntityCopyWith<FilmEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmEntityCopyWith<$Res> {
  factory $FilmEntityCopyWith(
          FilmEntity value, $Res Function(FilmEntity) then) =
      _$FilmEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      double voteAverage,
      String posterPath,
      String overview});
}

/// @nodoc
class _$FilmEntityCopyWithImpl<$Res> implements $FilmEntityCopyWith<$Res> {
  _$FilmEntityCopyWithImpl(this._value, this._then);

  final FilmEntity _value;
  // ignore: unused_field
  final $Res Function(FilmEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FilmEntityCopyWith<$Res>
    implements $FilmEntityCopyWith<$Res> {
  factory _$$_FilmEntityCopyWith(
          _$_FilmEntity value, $Res Function(_$_FilmEntity) then) =
      __$$_FilmEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      double voteAverage,
      String posterPath,
      String overview});
}

/// @nodoc
class __$$_FilmEntityCopyWithImpl<$Res> extends _$FilmEntityCopyWithImpl<$Res>
    implements _$$_FilmEntityCopyWith<$Res> {
  __$$_FilmEntityCopyWithImpl(
      _$_FilmEntity _value, $Res Function(_$_FilmEntity) _then)
      : super(_value, (v) => _then(v as _$_FilmEntity));

  @override
  _$_FilmEntity get _value => super._value as _$_FilmEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? posterPath = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_FilmEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilmEntity implements _FilmEntity {
  _$_FilmEntity(
      {required this.id,
      required this.title,
      required this.voteAverage,
      required this.posterPath,
      required this.overview});

  @override
  final int id;
  @override
  final String title;
  @override
  final double voteAverage;
  @override
  final String posterPath;
  @override
  final String overview;

  @override
  String toString() {
    return 'FilmEntity(id: $id, title: $title, voteAverage: $voteAverage, posterPath: $posterPath, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.overview, overview));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(overview));

  @JsonKey(ignore: true)
  @override
  _$$_FilmEntityCopyWith<_$_FilmEntity> get copyWith =>
      __$$_FilmEntityCopyWithImpl<_$_FilmEntity>(this, _$identity);
}

abstract class _FilmEntity implements FilmEntity {
  factory _FilmEntity(
      {required final int id,
      required final String title,
      required final double voteAverage,
      required final String posterPath,
      required final String overview}) = _$_FilmEntity;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  double get voteAverage => throw _privateConstructorUsedError;
  @override
  String get posterPath => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FilmEntityCopyWith<_$_FilmEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
