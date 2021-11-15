// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'artist_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistWrite _$ArtistWriteFromJson(Map<String, dynamic> json) {
  return _ArtistWrite.fromJson(json);
}

/// @nodoc
class _$ArtistWriteTearOff {
  const _$ArtistWriteTearOff();

  _ArtistWrite call(
      {int? id,
      required String name,
      String? imageLink,
      String? countryName,
      String? soundcloudUsername,
      String? instagramUsername,
      String? about}) {
    return _ArtistWrite(
      id: id,
      name: name,
      imageLink: imageLink,
      countryName: countryName,
      soundcloudUsername: soundcloudUsername,
      instagramUsername: instagramUsername,
      about: about,
    );
  }

  ArtistWrite fromJson(Map<String, Object> json) {
    return ArtistWrite.fromJson(json);
  }
}

/// @nodoc
const $ArtistWrite = _$ArtistWriteTearOff();

/// @nodoc
mixin _$ArtistWrite {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;
  String? get soundcloudUsername => throw _privateConstructorUsedError;
  String? get instagramUsername => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistWriteCopyWith<ArtistWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistWriteCopyWith<$Res> {
  factory $ArtistWriteCopyWith(
          ArtistWrite value, $Res Function(ArtistWrite) then) =
      _$ArtistWriteCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String name,
      String? imageLink,
      String? countryName,
      String? soundcloudUsername,
      String? instagramUsername,
      String? about});
}

/// @nodoc
class _$ArtistWriteCopyWithImpl<$Res> implements $ArtistWriteCopyWith<$Res> {
  _$ArtistWriteCopyWithImpl(this._value, this._then);

  final ArtistWrite _value;
  // ignore: unused_field
  final $Res Function(ArtistWrite) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageLink = freezed,
    Object? countryName = freezed,
    Object? soundcloudUsername = freezed,
    Object? instagramUsername = freezed,
    Object? about = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      soundcloudUsername: soundcloudUsername == freezed
          ? _value.soundcloudUsername
          : soundcloudUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: instagramUsername == freezed
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ArtistWriteCopyWith<$Res>
    implements $ArtistWriteCopyWith<$Res> {
  factory _$ArtistWriteCopyWith(
          _ArtistWrite value, $Res Function(_ArtistWrite) then) =
      __$ArtistWriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String name,
      String? imageLink,
      String? countryName,
      String? soundcloudUsername,
      String? instagramUsername,
      String? about});
}

/// @nodoc
class __$ArtistWriteCopyWithImpl<$Res> extends _$ArtistWriteCopyWithImpl<$Res>
    implements _$ArtistWriteCopyWith<$Res> {
  __$ArtistWriteCopyWithImpl(
      _ArtistWrite _value, $Res Function(_ArtistWrite) _then)
      : super(_value, (v) => _then(v as _ArtistWrite));

  @override
  _ArtistWrite get _value => super._value as _ArtistWrite;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageLink = freezed,
    Object? countryName = freezed,
    Object? soundcloudUsername = freezed,
    Object? instagramUsername = freezed,
    Object? about = freezed,
  }) {
    return _then(_ArtistWrite(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      soundcloudUsername: soundcloudUsername == freezed
          ? _value.soundcloudUsername
          : soundcloudUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: instagramUsername == freezed
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistWrite implements _ArtistWrite {
  const _$_ArtistWrite(
      {this.id,
      required this.name,
      this.imageLink,
      this.countryName,
      this.soundcloudUsername,
      this.instagramUsername,
      this.about});

  factory _$_ArtistWrite.fromJson(Map<String, dynamic> json) =>
      _$_$_ArtistWriteFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String? imageLink;
  @override
  final String? countryName;
  @override
  final String? soundcloudUsername;
  @override
  final String? instagramUsername;
  @override
  final String? about;

  @override
  String toString() {
    return 'ArtistWrite(id: $id, name: $name, imageLink: $imageLink, countryName: $countryName, soundcloudUsername: $soundcloudUsername, instagramUsername: $instagramUsername, about: $about)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArtistWrite &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
            (identical(other.soundcloudUsername, soundcloudUsername) ||
                const DeepCollectionEquality()
                    .equals(other.soundcloudUsername, soundcloudUsername)) &&
            (identical(other.instagramUsername, instagramUsername) ||
                const DeepCollectionEquality()
                    .equals(other.instagramUsername, instagramUsername)) &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(soundcloudUsername) ^
      const DeepCollectionEquality().hash(instagramUsername) ^
      const DeepCollectionEquality().hash(about);

  @JsonKey(ignore: true)
  @override
  _$ArtistWriteCopyWith<_ArtistWrite> get copyWith =>
      __$ArtistWriteCopyWithImpl<_ArtistWrite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArtistWriteToJson(this);
  }
}

abstract class _ArtistWrite implements ArtistWrite {
  const factory _ArtistWrite(
      {int? id,
      required String name,
      String? imageLink,
      String? countryName,
      String? soundcloudUsername,
      String? instagramUsername,
      String? about}) = _$_ArtistWrite;

  factory _ArtistWrite.fromJson(Map<String, dynamic> json) =
      _$_ArtistWrite.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get imageLink => throw _privateConstructorUsedError;
  @override
  String? get countryName => throw _privateConstructorUsedError;
  @override
  String? get soundcloudUsername => throw _privateConstructorUsedError;
  @override
  String? get instagramUsername => throw _privateConstructorUsedError;
  @override
  String? get about => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArtistWriteCopyWith<_ArtistWrite> get copyWith =>
      throw _privateConstructorUsedError;
}
