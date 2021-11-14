import 'package:freezed_annotation/freezed_annotation.dart';
import '../errors/failures.dart';

part 'response_sealed.freezed.dart';

@freezed
class ResponseSealed<DATA> with _$ResponseSealed<DATA> {
  const factory ResponseSealed.success(DATA data) = SuccessResponse<DATA>;
  const factory ResponseSealed.failure(Failure failure) = FailureResponse<DATA>;
}
