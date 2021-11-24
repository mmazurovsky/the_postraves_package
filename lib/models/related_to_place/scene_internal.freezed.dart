// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scene_internal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SceneInternalTearOff {
  const _$SceneInternalTearOff();

  _SceneInternal call(
      {String? imageLink,
      int? id,
      String? internalId,
      required String name,
      required int priority}) {
    return _SceneInternal(
      imageLink: imageLink,
      id: id,
      internalId: internalId,
      name: name,
      priority: priority,
    );
  }
}

/// @nodoc
const $SceneInternal = _$SceneInternalTearOff();

/// @nodoc
mixin _$SceneInternal {
  String? get imageLink => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get internalId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SceneInternalCopyWith<SceneInternal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SceneInternalCopyWith<$Res> {
  factory $SceneInternalCopyWith(
          SceneInternal value, $Res Function(SceneInternal) then) =
      _$SceneInternalCopyWithImpl<$Res>;
  $Res call(
      {String? imageLink,
      int? id,
      String? internalId,
      String name,
      int priority});
}

/// @nodoc
class _$SceneInternalCopyWithImpl<$Res>
    implements $SceneInternalCopyWith<$Res> {
  _$SceneInternalCopyWithImpl(this._value, this._then);

  final SceneInternal _value;
  // ignore: unused_field
  final $Res Function(SceneInternal) _then;

  @override
  $Res call({
    Object? imageLink = freezed,
    Object? id = freezed,
    Object? internalId = freezed,
    Object? name = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      internalId: internalId == freezed
          ? _value.internalId
          : internalId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SceneInternalCopyWith<$Res>
    implements $SceneInternalCopyWith<$Res> {
  factory _$SceneInternalCopyWith(
          _SceneInternal value, $Res Function(_SceneInternal) then) =
      __$SceneInternalCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? imageLink,
      int? id,
      String? internalId,
      String name,
      int priority});
}

/// @nodoc
class __$SceneInternalCopyWithImpl<$Res>
    extends _$SceneInternalCopyWithImpl<$Res>
    implements _$SceneInternalCopyWith<$Res> {
  __$SceneInternalCopyWithImpl(
      _SceneInternal _value, $Res Function(_SceneInternal) _then)
      : super(_value, (v) => _then(v as _SceneInternal));

  @override
  _SceneInternal get _value => super._value as _SceneInternal;

  @override
  $Res call({
    Object? imageLink = freezed,
    Object? id = freezed,
    Object? internalId = freezed,
    Object? name = freezed,
    Object? priority = freezed,
  }) {
    return _then(_SceneInternal(
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      internalId: internalId == freezed
          ? _value.internalId
          : internalId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SceneInternal extends _SceneInternal {
  const _$_SceneInternal(
      {this.imageLink,
      this.id,
      this.internalId,
      required this.name,
      required this.priority})
      : super._();

  @override
  final String? imageLink;
  @override
  final int? id;
  @override
  final String? internalId;
  @override
  final String name;
  @override
  final int priority;

  @override
  String toString() {
    return 'SceneInternal(imageLink: $imageLink, id: $id, internalId: $internalId, name: $name, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SceneInternal &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.internalId, internalId) ||
                const DeepCollectionEquality()
                    .equals(other.internalId, internalId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(internalId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(priority);

  @JsonKey(ignore: true)
  @override
  _$SceneInternalCopyWith<_SceneInternal> get copyWith =>
      __$SceneInternalCopyWithImpl<_SceneInternal>(this, _$identity);
}

abstract class _SceneInternal extends SceneInternal {
  const factory _SceneInternal(
      {String? imageLink,
      int? id,
      String? internalId,
      required String name,
      required int priority}) = _$_SceneInternal;
  const _SceneInternal._() : super._();

  @override
  String? get imageLink => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get internalId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get priority => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SceneInternalCopyWith<_SceneInternal> get copyWith =>
      throw _privateConstructorUsedError;
}
