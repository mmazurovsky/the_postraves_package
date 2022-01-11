import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/dto/followable_type.dart';

part 'followable_params.freezed.dart';

@freezed
class FollowableId with _$FollowableId {
  const factory FollowableId({
    required int id,
    required FollowableType type,
  }) = _FollowableId;
}

class FollowableVariables with ChangeNotifier {
  late int _overallFollowers;
  late int _weeklyFollowers;
  late bool _isFollowed;

  FollowableVariables({
    required int overallFollowers,
    required int weeklyFollowers,
    required bool isFollowed,
  }) {
    _overallFollowers = overallFollowers;
    _weeklyFollowers = weeklyFollowers;
    _isFollowed = isFollowed;
  }

  factory FollowableVariables.empty() {
    return FollowableVariables(
      overallFollowers: 0,
      weeklyFollowers: 0,
      isFollowed: false,
    );
  }

  void toggleFollow() {
    if (_isFollowed) {
      _overallFollowers--;
      _weeklyFollowers--;
    } else {
      _overallFollowers++;
      _weeklyFollowers++;
    }
    _isFollowed = !_isFollowed;
    notifyListeners();
  }
}
