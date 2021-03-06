import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_postraves_package/models/geo/city.dart';
import 'user_profile_to_write.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();
  const factory UserProfile({
    required int id,
    required String name,
    required City currentCity,
    required int overallFollowers,
    required int weeklyFollowers,
    String? imageLink,
    String? about,
    String? instagramUsername,
    String? telegramUsername,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  UserProfileToWrite convertToUserProfileToWrite() {
    return UserProfileToWrite(
      name: name,
      about: about,
      imageLink: imageLink,
      instagramUsername: instagramUsername,
      telegramUsername: telegramUsername,
      currentCity: currentCity.name,
    );
  }
}
