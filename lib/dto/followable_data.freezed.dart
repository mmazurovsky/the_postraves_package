// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'followable_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FollowableData _$FollowableDataFromJson(Map<String, dynamic> json) {
  return _FollowableDataDto.fromJson(json);
}

/// @nodoc
class _$FollowableDataTearOff {
  const _$FollowableDataTearOff();

  _FollowableDataDto call(
      {required String name,
      required String? imageLink,
      ImageDimensions? imageDimensions = null,
      Country? country = null,
      required int id,
      required FollowableType type}) {
    return _FollowableDataDto(
      name: name,
      imageLink: imageLink,
      imageDimensions: imageDimensions,
      country: country,
      id: id,
      type: type,
    );
  }

  FollowableData fromJson(Map<String, Object> json) {
    return FollowableData.fromJson(json);
  }
}

/// @nodoc
const $FollowableData = _$FollowableDataTearOff();

/// @nodoc
mixin _$FollowableData {
  String get name => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  ImageDimensions? get imageDimensions => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  FollowableType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowableDataCopyWith<FollowableData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowableDataCopyWith<$Res> {
  factory $FollowableDataCopyWith(
          FollowableData value, $Res Function(FollowableData) then) =
      _$FollowableDataCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String? imageLink,
      ImageDimensions? imageDimensions,
      Country? country,
      int id,
      FollowableType type});

  $ImageDimensionsCopyWith<$Res>? get imageDimensions;
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$FollowableDataCopyWithImpl<$Res>
    implements $FollowableDataCopyWith<$Res> {
  _$FollowableDataCopyWithImpl(this._value, this._then);

  final FollowableData _value;
  // ignore: unused_field
  final $Res Function(FollowableData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageLink = freezed,
    Object? imageDimensions = freezed,
    Object? country = freezed,
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageDimensions: imageDimensions == freezed
          ? _value.imageDimensions
          : imageDimensions // ignore: cast_nullable_to_non_nullable
              as ImageDimensions?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FollowableType,
    ));
  }

  @override
  $ImageDimensionsCopyWith<$Res>? get imageDimensions {
    if (_value.imageDimensions == null) {
      return null;
    }

    return $ImageDimensionsCopyWith<$Res>(_value.imageDimensions!, (value) {
      return _then(_value.copyWith(imageDimensions: value));
    });
  }

  @override
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$FollowableDataDtoCopyWith<$Res>
    implements $FollowableDataCopyWith<$Res> {
  factory _$FollowableDataDtoCopyWith(
          _FollowableDataDto value, $Res Function(_FollowableDataDto) then) =
      __$FollowableDataDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String? imageLink,
      ImageDimensions? imageDimensions,
      Country? country,
      int id,
      FollowableType type});

  @override
  $ImageDimensionsCopyWith<$Res>? get imageDimensions;
  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$FollowableDataDtoCopyWithImpl<$Res>
    extends _$FollowableDataCopyWithImpl<$Res>
    implements _$FollowableDataDtoCopyWith<$Res> {
  __$FollowableDataDtoCopyWithImpl(
      _FollowableDataDto _value, $Res Function(_FollowableDataDto) _then)
      : super(_value, (v) => _then(v as _FollowableDataDto));

  @override
  _FollowableDataDto get _value => super._value as _FollowableDataDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageLink = freezed,
    Object? imageDimensions = freezed,
    Object? country = freezed,
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_FollowableDataDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageDimensions: imageDimensions == freezed
          ? _value.imageDimensions
          : imageDimensions // ignore: cast_nullable_to_non_nullable
              as ImageDimensions?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FollowableType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FollowableDataDto extends _FollowableDataDto {
  const _$_FollowableDataDto(
      {required this.name,
      required this.imageLink,
      this.imageDimensions = null,
      this.country = null,
      required this.id,
      required this.type})
      : super._();

  factory _$_FollowableDataDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FollowableDataDtoFromJson(json);

  @override
  final String name;
  @override
  final String? imageLink;
  @JsonKey(defaultValue: null)
  @override
  final ImageDimensions? imageDimensions;
  @JsonKey(defaultValue: null)
  @override
  final Country? country;
  @override
  final int id;
  @override
  final FollowableType type;

  @override
  String toString() {
    return 'FollowableData(name: $name, imageLink: $imageLink, imageDimensions: $imageDimensions, country: $country, id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowableDataDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
            (identical(other.imageDimensions, imageDimensions) ||
                const DeepCollectionEquality()
                    .equals(other.imageDimensions, imageDimensions)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(imageDimensions) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$FollowableDataDtoCopyWith<_FollowableDataDto> get copyWith =>
      __$FollowableDataDtoCopyWithImpl<_FollowableDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FollowableDataDtoToJson(this);
  }
}

abstract class _FollowableDataDto extends FollowableData {
  const factory _FollowableDataDto(
      {required String name,
      required String? imageLink,
      ImageDimensions? imageDimensions,
      Country? country,
      required int id,
      required FollowableType type}) = _$_FollowableDataDto;
  const _FollowableDataDto._() : super._();

  factory _FollowableDataDto.fromJson(Map<String, dynamic> json) =
      _$_FollowableDataDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get imageLink => throw _privateConstructorUsedError;
  @override
  ImageDimensions? get imageDimensions => throw _privateConstructorUsedError;
  @override
  Country? get country => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  FollowableType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FollowableDataDtoCopyWith<_FollowableDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
