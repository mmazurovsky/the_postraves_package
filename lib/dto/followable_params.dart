import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_type.dart';

part 'followable_params.freezed.dart';

@freezed
class FollowableVariables with _$FollowableVariables {
  const FollowableVariables._();

  const factory FollowableVariables({
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
  }) = _FollowableVariables;

  factory FollowableVariables.empty() 
  {
    return const FollowableVariables(
      overallFollowers: 0,
      weeklyFollowers: 0,
      isFollowed: false,
    );
  }
}

@freezed
class FollowableId with _$FollowableId {
  const factory FollowableId({
    required int id,
    required FollowableType type,
  }) = _FollowableId;
}
