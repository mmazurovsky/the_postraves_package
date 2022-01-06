// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'followable_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FollowableIdTearOff {
  const _$FollowableIdTearOff();

  _FollowableId call({required int id, required FollowableType type}) {
    return _FollowableId(
      id: id,
      type: type,
    );
  }
}

/// @nodoc
const $FollowableId = _$FollowableIdTearOff();

/// @nodoc
mixin _$FollowableId {
  int get id => throw _privateConstructorUsedError;
  FollowableType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowableIdCopyWith<FollowableId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowableIdCopyWith<$Res> {
  factory $FollowableIdCopyWith(
          FollowableId value, $Res Function(FollowableId) then) =
      _$FollowableIdCopyWithImpl<$Res>;
  $Res call({int id, FollowableType type});
}

/// @nodoc
class _$FollowableIdCopyWithImpl<$Res> implements $FollowableIdCopyWith<$Res> {
  _$FollowableIdCopyWithImpl(this._value, this._then);

  final FollowableId _value;
  // ignore: unused_field
  final $Res Function(FollowableId) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$FollowableIdCopyWith<$Res>
    implements $FollowableIdCopyWith<$Res> {
  factory _$FollowableIdCopyWith(
          _FollowableId value, $Res Function(_FollowableId) then) =
      __$FollowableIdCopyWithImpl<$Res>;
  @override
  $Res call({int id, FollowableType type});
}

/// @nodoc
class __$FollowableIdCopyWithImpl<$Res> extends _$FollowableIdCopyWithImpl<$Res>
    implements _$FollowableIdCopyWith<$Res> {
  __$FollowableIdCopyWithImpl(
      _FollowableId _value, $Res Function(_FollowableId) _then)
      : super(_value, (v) => _then(v as _FollowableId));

  @override
  _FollowableId get _value => super._value as _FollowableId;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_FollowableId(
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

class _$_FollowableId implements _FollowableId {
  const _$_FollowableId({required this.id, required this.type});

  @override
  final int id;
  @override
  final FollowableType type;

  @override
  String toString() {
    return 'FollowableId(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowableId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$FollowableIdCopyWith<_FollowableId> get copyWith =>
      __$FollowableIdCopyWithImpl<_FollowableId>(this, _$identity);
}

abstract class _FollowableId implements FollowableId {
  const factory _FollowableId({required int id, required FollowableType type}) =
      _$_FollowableId;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  FollowableType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FollowableIdCopyWith<_FollowableId> get copyWith =>
      throw _privateConstructorUsedError;
}
