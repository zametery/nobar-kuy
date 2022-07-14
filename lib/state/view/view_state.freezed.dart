// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateInitial value) initial,
    required TResult Function(ViewStateSuccess value) success,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<$Res> implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState _value;
  // ignore: unused_field
  final $Res Function(ViewState) _then;
}

/// @nodoc
abstract class _$$ViewStateInitialCopyWith<$Res> {
  factory _$$ViewStateInitialCopyWith(
          _$ViewStateInitial value, $Res Function(_$ViewStateInitial) then) =
      __$$ViewStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateInitialCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res>
    implements _$$ViewStateInitialCopyWith<$Res> {
  __$$ViewStateInitialCopyWithImpl(
      _$ViewStateInitial _value, $Res Function(_$ViewStateInitial) _then)
      : super(_value, (v) => _then(v as _$ViewStateInitial));

  @override
  _$ViewStateInitial get _value => super._value as _$ViewStateInitial;
}

/// @nodoc

class _$ViewStateInitial implements ViewStateInitial {
  const _$ViewStateInitial();

  @override
  String toString() {
    return 'ViewState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateInitial value) initial,
    required TResult Function(ViewStateSuccess value) success,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ViewStateInitial implements ViewState {
  const factory ViewStateInitial() = _$ViewStateInitial;
}

/// @nodoc
abstract class _$$ViewStateSuccessCopyWith<$Res> {
  factory _$$ViewStateSuccessCopyWith(
          _$ViewStateSuccess value, $Res Function(_$ViewStateSuccess) then) =
      __$$ViewStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateSuccessCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res>
    implements _$$ViewStateSuccessCopyWith<$Res> {
  __$$ViewStateSuccessCopyWithImpl(
      _$ViewStateSuccess _value, $Res Function(_$ViewStateSuccess) _then)
      : super(_value, (v) => _then(v as _$ViewStateSuccess));

  @override
  _$ViewStateSuccess get _value => super._value as _$ViewStateSuccess;
}

/// @nodoc

class _$ViewStateSuccess implements ViewStateSuccess {
  const _$ViewStateSuccess();

  @override
  String toString() {
    return 'ViewState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateInitial value) initial,
    required TResult Function(ViewStateSuccess value) success,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ViewStateSuccess implements ViewState {
  const factory ViewStateSuccess() = _$ViewStateSuccess;
}

/// @nodoc
abstract class _$$ViewStateLoadingCopyWith<$Res> {
  factory _$$ViewStateLoadingCopyWith(
          _$ViewStateLoading value, $Res Function(_$ViewStateLoading) then) =
      __$$ViewStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateLoadingCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res>
    implements _$$ViewStateLoadingCopyWith<$Res> {
  __$$ViewStateLoadingCopyWithImpl(
      _$ViewStateLoading _value, $Res Function(_$ViewStateLoading) _then)
      : super(_value, (v) => _then(v as _$ViewStateLoading));

  @override
  _$ViewStateLoading get _value => super._value as _$ViewStateLoading;
}

/// @nodoc

class _$ViewStateLoading implements ViewStateLoading {
  const _$ViewStateLoading();

  @override
  String toString() {
    return 'ViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateInitial value) initial,
    required TResult Function(ViewStateSuccess value) success,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewStateLoading implements ViewState {
  const factory ViewStateLoading() = _$ViewStateLoading;
}

/// @nodoc
abstract class _$$ViewStateFailedCopyWith<$Res> {
  factory _$$ViewStateFailedCopyWith(
          _$ViewStateFailed value, $Res Function(_$ViewStateFailed) then) =
      __$$ViewStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewStateFailedCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res>
    implements _$$ViewStateFailedCopyWith<$Res> {
  __$$ViewStateFailedCopyWithImpl(
      _$ViewStateFailed _value, $Res Function(_$ViewStateFailed) _then)
      : super(_value, (v) => _then(v as _$ViewStateFailed));

  @override
  _$ViewStateFailed get _value => super._value as _$ViewStateFailed;
}

/// @nodoc

class _$ViewStateFailed implements ViewStateFailed {
  const _$ViewStateFailed();

  @override
  String toString() {
    return 'ViewState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewStateInitial value) initial,
    required TResult Function(ViewStateSuccess value) success,
    required TResult Function(ViewStateLoading value) loading,
    required TResult Function(ViewStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewStateInitial value)? initial,
    TResult Function(ViewStateSuccess value)? success,
    TResult Function(ViewStateLoading value)? loading,
    TResult Function(ViewStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ViewStateFailed implements ViewState {
  const factory ViewStateFailed() = _$ViewStateFailed;
}
