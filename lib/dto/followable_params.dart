import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_type.dart';

part 'followable_params.freezed.dart';

class FollowableVariables {
  int overallFollowers;
  int weeklyFollowers;
  bool isFollowed;

  FollowableVariables({
    required this.overallFollowers,
    required this.weeklyFollowers,
    required this.isFollowed,
  });

  FollowableVariables.empty()
      : this(
          overallFollowers: 0,
          weeklyFollowers: 0,
          isFollowed: false,
        );
}

@freezed
class FollowableId with _$FollowableId {
  const factory FollowableId({
    required int id,
    required FollowableType type,
  }) = _FollowableId;
}
