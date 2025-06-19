import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.apiFailure({required String message}) = APIFailure;
  const factory Failure.modelConversionFailure({required String message}) = ModelConversionFailure;
}