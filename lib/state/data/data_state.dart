import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState.success({required T data}) = DataStateSuccess<T>;
  const factory DataState.error({
    @Default('Something Went Wrong') String message,
    T? data,
    dynamic exception,
    StackTrace? stackTrace,
    String? statusCode,
  }) = DataStateError<T>;
}
