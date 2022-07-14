// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res> implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState<T> _value;
  // ignore: unused_field
  final $Res Function(DataState<T>) _then;
}

/// @nodoc
abstract class _$$DataStateSuccessCopyWith<T, $Res> {
  factory _$$DataStateSuccessCopyWith(_$DataStateSuccess<T> value,
          $Res Function(_$DataStateSuccess<T>) then) =
      __$$DataStateSuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$$DataStateSuccessCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res>
    implements _$$DataStateSuccessCopyWith<T, $Res> {
  __$$DataStateSuccessCopyWithImpl(
      _$DataStateSuccess<T> _value, $Res Function(_$DataStateSuccess<T>) _then)
      : super(_value, (v) => _then(v as _$DataStateSuccess<T>));

  @override
  _$DataStateSuccess<T> get _value => super._value as _$DataStateSuccess<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataStateSuccess<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataStateSuccess<T> implements DataStateSuccess<T> {
  const _$DataStateSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'DataState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$DataStateSuccessCopyWith<T, _$DataStateSuccess<T>> get copyWith =>
      __$$DataStateSuccessCopyWithImpl<T, _$DataStateSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)
        error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DataStateSuccess<T> implements DataState<T> {
  const factory DataStateSuccess({required final T data}) =
      _$DataStateSuccess<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DataStateSuccessCopyWith<T, _$DataStateSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataStateErrorCopyWith<T, $Res> {
  factory _$$DataStateErrorCopyWith(
          _$DataStateError<T> value, $Res Function(_$DataStateError<T>) then) =
      __$$DataStateErrorCopyWithImpl<T, $Res>;
  $Res call(
      {String message,
      T? data,
      dynamic exception,
      StackTrace? stackTrace,
      String? statusCode});
}

/// @nodoc
class __$$DataStateErrorCopyWithImpl<T, $Res>
    extends _$DataStateCopyWithImpl<T, $Res>
    implements _$$DataStateErrorCopyWith<T, $Res> {
  __$$DataStateErrorCopyWithImpl(
      _$DataStateError<T> _value, $Res Function(_$DataStateError<T>) _then)
      : super(_value, (v) => _then(v as _$DataStateError<T>));

  @override
  _$DataStateError<T> get _value => super._value as _$DataStateError<T>;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
    Object? exception = freezed,
    Object? stackTrace = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$DataStateError<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataStateError<T> implements DataStateError<T> {
  const _$DataStateError(
      {this.message = 'Something Went Wrong',
      this.data,
      this.exception,
      this.stackTrace,
      this.statusCode});

  @override
  @JsonKey()
  final String message;
  @override
  final T? data;
  @override
  final dynamic exception;
  @override
  final StackTrace? stackTrace;
  @override
  final String? statusCode;

  @override
  String toString() {
    return 'DataState<$T>.error(message: $message, data: $data, exception: $exception, stackTrace: $stackTrace, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateError<T> &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(stackTrace),
      const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$$DataStateErrorCopyWith<T, _$DataStateError<T>> get copyWith =>
      __$$DataStateErrorCopyWithImpl<T, _$DataStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)
        error,
  }) {
    return error(message, data, exception, stackTrace, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
  }) {
    return error?.call(message, data, exception, stackTrace, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, dynamic exception,
            StackTrace? stackTrace, String? statusCode)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, data, exception, stackTrace, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateSuccess<T> value) success,
    required TResult Function(DataStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateSuccess<T> value)? success,
    TResult Function(DataStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DataStateError<T> implements DataState<T> {
  const factory DataStateError(
      {final String message,
      final T? data,
      final dynamic exception,
      final StackTrace? stackTrace,
      final String? statusCode}) = _$DataStateError<T>;

  String get message => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  dynamic get exception => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DataStateErrorCopyWith<T, _$DataStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
