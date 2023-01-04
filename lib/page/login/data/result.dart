import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.initial() = Initial<T>;
  const factory Result.loading() = Loading<T>;
  const factory Result.success(T data, {String? message}) = Success<T>;
  const factory Result.error(String message) = Error<T>;
}
