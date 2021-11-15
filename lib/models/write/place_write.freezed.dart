// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'place_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceWrite _$PlaceWriteFromJson(Map<String, dynamic> json) {
  return _PlaceWrite.fromJson(json);
}

/// @nodoc
class _$PlaceWriteTearOff {
  const _$PlaceWriteTearOff();

  _PlaceWrite call(
      {int? id,
      required String name,
      required String cityName,
      required String streetAddress,
      required Coordinate coordinate,
      String? imageLink,
      String? soundcloudUsername,
      String? instagramUsername,
      String? about}) {
    return _PlaceWrite(
      id: id,
      name: name,
      cityName: cityName,
      streetAddress: streetAddress,
      coordinate: coordinate,
      imageLink: imageLink,
      soundcloudUsername: soundcloudUsername,
      instagramUsername: instagramUsername,
      about: about,
    );
  }

  PlaceWrite fromJson(Map<String, Object> json) {
    return PlaceWrite.fromJson(json);
  }
}

/// @nodoc
const $PlaceWrite = _$PlaceWriteTearOff();

/// @nodoc
mixin _$PlaceWrite {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cityName => throw _privateConstructorUsedError;
  String get streetAddress => throw _privateConstructorUsedError;
  Coordinate get coordinate => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  String? get soundcloudUsername => throw _privateConstructorUsedError;
  String? get instagramUsername => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceWriteCopyWith<PlaceWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceWriteCopyWith<$Res> {
  factory $PlaceWriteCopyWith(
          PlaceWrite value, $Res Function(PlaceWrite) then) =
      _$PlaceWriteCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String name,
      String cityName,
      String streetAddress,
      Coordinate coordinate,
      String? imageLink,
      String? soundcloudUsername,
      String? instagramUsername,
      String? about});

  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$PlaceWriteCopyWithImpl<$Res> implements $PlaceWriteCopyWith<$Res> {
  _$PlaceWriteCopyWithImpl(this._value, this._then);

  final PlaceWrite _value;
  // ignore: unused_field
  final $Res Function(PlaceWrite) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cityName = freezed,
    Object? streetAddress = freezed,
    Object? coordinate = freezed,
    Object? imageLink = freezed,
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
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress: streetAddress == freezed
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
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

  @override
  $CoordinateCopyWith<$Res> get coordinate {
    return $CoordinateCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value));
    });
  }
}

/// @nodoc
abstract class _$PlaceWriteCopyWith<$Res> implements $PlaceWriteCopyWith<$Res> {
  factory _$PlaceWriteCopyWith(
          _PlaceWrite value, $Res Function(_PlaceWrite) then) =
      __$PlaceWriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String name,
      String cityName,
      String streetAddress,
      Coordinate coordinate,
      String? imageLink,
      String? soundcloudUsername,
      String? instagramUsername,
      String? about});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$PlaceWriteCopyWithImpl<$Res> extends _$PlaceWriteCopyWithImpl<$Res>
    implements _$PlaceWriteCopyWith<$Res> {
  __$PlaceWriteCopyWithImpl(
      _PlaceWrite _value, $Res Function(_PlaceWrite) _then)
      : super(_value, (v) => _then(v as _PlaceWrite));

  @override
  _PlaceWrite get _value => super._value as _PlaceWrite;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cityName = freezed,
    Object? streetAddress = freezed,
    Object? coordinate = freezed,
    Object? imageLink = freezed,
    Object? soundcloudUsername = freezed,
    Object? instagramUsername = freezed,
    Object? about = freezed,
  }) {
    return _then(_PlaceWrite(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      streetAddress: streetAddress == freezed
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: coordinate == freezed
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
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
class _$_PlaceWrite implements _PlaceWrite {
  const _$_PlaceWrite(
      {this.id,
      required this.name,
      required this.cityName,
      required this.streetAddress,
      required this.coordinate,
      this.imageLink,
      this.soundcloudUsername,
      this.instagramUsername,
      this.about});

  factory _$_PlaceWrite.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaceWriteFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String cityName;
  @override
  final String streetAddress;
  @override
  final Coordinate coordinate;
  @override
  final String? imageLink;
  @override
  final String? soundcloudUsername;
  @override
  final String? instagramUsername;
  @override
  final String? about;

  @override
  String toString() {
    return 'PlaceWrite(id: $id, name: $name, cityName: $cityName, streetAddress: $streetAddress, coordinate: $coordinate, imageLink: $imageLink, soundcloudUsername: $soundcloudUsername, instagramUsername: $instagramUsername, about: $about)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceWrite &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)) &&
            (identical(other.streetAddress, streetAddress) ||
                const DeepCollectionEquality()
                    .equals(other.streetAddress, streetAddress)) &&
            (identical(other.coordinate, coordinate) ||
                const DeepCollectionEquality()
                    .equals(other.coordinate, coordinate)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
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
      const DeepCollectionEquality().hash(cityName) ^
      const DeepCollectionEquality().hash(streetAddress) ^
      const DeepCollectionEquality().hash(coordinate) ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(soundcloudUsername) ^
      const DeepCollectionEquality().hash(instagramUsername) ^
      const DeepCollectionEquality().hash(about);

  @JsonKey(ignore: true)
  @override
  _$PlaceWriteCopyWith<_PlaceWrite> get copyWith =>
      __$PlaceWriteCopyWithImpl<_PlaceWrite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaceWriteToJson(this);
  }
}

abstract class _PlaceWrite implements PlaceWrite {
  const factory _PlaceWrite(
      {int? id,
      required String name,
      required String cityName,
      required String streetAddress,
      required Coordinate coordinate,
      String? imageLink,
      String? soundcloudUsername,
      String? instagramUsername,
      String? about}) = _$_PlaceWrite;

  factory _PlaceWrite.fromJson(Map<String, dynamic> json) =
      _$_PlaceWrite.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get cityName => throw _privateConstructorUsedError;
  @override
  String get streetAddress => throw _privateConstructorUsedError;
  @override
  Coordinate get coordinate => throw _privateConstructorUsedError;
  @override
  String? get imageLink => throw _privateConstructorUsedError;
  @override
  String? get soundcloudUsername => throw _privateConstructorUsedError;
  @override
  String? get instagramUsername => throw _privateConstructorUsedError;
  @override
  String? get about => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceWriteCopyWith<_PlaceWrite> get copyWith =>
      throw _privateConstructorUsedError;
}
