// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'timetable_performance_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimetablePerformanceWrite _$TimetablePerformanceWriteFromJson(
    Map<String, dynamic> json) {
  return _TimetablePerformanceWrite.fromJson(json);
}

/// @nodoc
class _$TimetablePerformanceWriteTearOff {
  const _$TimetablePerformanceWriteTearOff();

  _TimetablePerformanceWrite call(
      {int? id,
      int? sceneId,
      required Set<int> artistIds,
      String? typeOfPerformance,
      DateTime? startingDateTime,
      DateTime? endingDateTime}) {
    return _TimetablePerformanceWrite(
      id: id,
      sceneId: sceneId,
      artistIds: artistIds,
      typeOfPerformance: typeOfPerformance,
      startingDateTime: startingDateTime,
      endingDateTime: endingDateTime,
    );
  }

  TimetablePerformanceWrite fromJson(Map<String, Object> json) {
    return TimetablePerformanceWrite.fromJson(json);
  }
}

/// @nodoc
const $TimetablePerformanceWrite = _$TimetablePerformanceWriteTearOff();

/// @nodoc
mixin _$TimetablePerformanceWrite {
  int? get id => throw _privateConstructorUsedError;
  int? get sceneId => throw _privateConstructorUsedError;
  Set<int> get artistIds => throw _privateConstructorUsedError;
  String? get typeOfPerformance => throw _privateConstructorUsedError;
  DateTime? get startingDateTime => throw _privateConstructorUsedError;
  DateTime? get endingDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimetablePerformanceWriteCopyWith<TimetablePerformanceWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimetablePerformanceWriteCopyWith<$Res> {
  factory $TimetablePerformanceWriteCopyWith(TimetablePerformanceWrite value,
          $Res Function(TimetablePerformanceWrite) then) =
      _$TimetablePerformanceWriteCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? sceneId,
      Set<int> artistIds,
      String? typeOfPerformance,
      DateTime? startingDateTime,
      DateTime? endingDateTime});
}

/// @nodoc
class _$TimetablePerformanceWriteCopyWithImpl<$Res>
    implements $TimetablePerformanceWriteCopyWith<$Res> {
  _$TimetablePerformanceWriteCopyWithImpl(this._value, this._then);

  final TimetablePerformanceWrite _value;
  // ignore: unused_field
  final $Res Function(TimetablePerformanceWrite) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sceneId = freezed,
    Object? artistIds = freezed,
    Object? typeOfPerformance = freezed,
    Object? startingDateTime = freezed,
    Object? endingDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sceneId: sceneId == freezed
          ? _value.sceneId
          : sceneId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistIds: artistIds == freezed
          ? _value.artistIds
          : artistIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      typeOfPerformance: typeOfPerformance == freezed
          ? _value.typeOfPerformance
          : typeOfPerformance // ignore: cast_nullable_to_non_nullable
              as String?,
      startingDateTime: startingDateTime == freezed
          ? _value.startingDateTime
          : startingDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endingDateTime: endingDateTime == freezed
          ? _value.endingDateTime
          : endingDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TimetablePerformanceWriteCopyWith<$Res>
    implements $TimetablePerformanceWriteCopyWith<$Res> {
  factory _$TimetablePerformanceWriteCopyWith(_TimetablePerformanceWrite value,
          $Res Function(_TimetablePerformanceWrite) then) =
      __$TimetablePerformanceWriteCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? sceneId,
      Set<int> artistIds,
      String? typeOfPerformance,
      DateTime? startingDateTime,
      DateTime? endingDateTime});
}

/// @nodoc
class __$TimetablePerformanceWriteCopyWithImpl<$Res>
    extends _$TimetablePerformanceWriteCopyWithImpl<$Res>
    implements _$TimetablePerformanceWriteCopyWith<$Res> {
  __$TimetablePerformanceWriteCopyWithImpl(_TimetablePerformanceWrite _value,
      $Res Function(_TimetablePerformanceWrite) _then)
      : super(_value, (v) => _then(v as _TimetablePerformanceWrite));

  @override
  _TimetablePerformanceWrite get _value =>
      super._value as _TimetablePerformanceWrite;

  @override
  $Res call({
    Object? id = freezed,
    Object? sceneId = freezed,
    Object? artistIds = freezed,
    Object? typeOfPerformance = freezed,
    Object? startingDateTime = freezed,
    Object? endingDateTime = freezed,
  }) {
    return _then(_TimetablePerformanceWrite(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sceneId: sceneId == freezed
          ? _value.sceneId
          : sceneId // ignore: cast_nullable_to_non_nullable
              as int?,
      artistIds: artistIds == freezed
          ? _value.artistIds
          : artistIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      typeOfPerformance: typeOfPerformance == freezed
          ? _value.typeOfPerformance
          : typeOfPerformance // ignore: cast_nullable_to_non_nullable
              as String?,
      startingDateTime: startingDateTime == freezed
          ? _value.startingDateTime
          : startingDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endingDateTime: endingDateTime == freezed
          ? _value.endingDateTime
          : endingDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimetablePerformanceWrite implements _TimetablePerformanceWrite {
  const _$_TimetablePerformanceWrite(
      {this.id,
      this.sceneId,
      required this.artistIds,
      this.typeOfPerformance,
      this.startingDateTime,
      this.endingDateTime});

  factory _$_TimetablePerformanceWrite.fromJson(Map<String, dynamic> json) =>
      _$_$_TimetablePerformanceWriteFromJson(json);

  @override
  final int? id;
  @override
  final int? sceneId;
  @override
  final Set<int> artistIds;
  @override
  final String? typeOfPerformance;
  @override
  final DateTime? startingDateTime;
  @override
  final DateTime? endingDateTime;

  @override
  String toString() {
    return 'TimetablePerformanceWrite(id: $id, sceneId: $sceneId, artistIds: $artistIds, typeOfPerformance: $typeOfPerformance, startingDateTime: $startingDateTime, endingDateTime: $endingDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimetablePerformanceWrite &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sceneId, sceneId) ||
                const DeepCollectionEquality()
                    .equals(other.sceneId, sceneId)) &&
            (identical(other.artistIds, artistIds) ||
                const DeepCollectionEquality()
                    .equals(other.artistIds, artistIds)) &&
            (identical(other.typeOfPerformance, typeOfPerformance) ||
                const DeepCollectionEquality()
                    .equals(other.typeOfPerformance, typeOfPerformance)) &&
            (identical(other.startingDateTime, startingDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.startingDateTime, startingDateTime)) &&
            (identical(other.endingDateTime, endingDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.endingDateTime, endingDateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sceneId) ^
      const DeepCollectionEquality().hash(artistIds) ^
      const DeepCollectionEquality().hash(typeOfPerformance) ^
      const DeepCollectionEquality().hash(startingDateTime) ^
      const DeepCollectionEquality().hash(endingDateTime);

  @JsonKey(ignore: true)
  @override
  _$TimetablePerformanceWriteCopyWith<_TimetablePerformanceWrite>
      get copyWith =>
          __$TimetablePerformanceWriteCopyWithImpl<_TimetablePerformanceWrite>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimetablePerformanceWriteToJson(this);
  }
}

abstract class _TimetablePerformanceWrite implements TimetablePerformanceWrite {
  const factory _TimetablePerformanceWrite(
      {int? id,
      int? sceneId,
      required Set<int> artistIds,
      String? typeOfPerformance,
      DateTime? startingDateTime,
      DateTime? endingDateTime}) = _$_TimetablePerformanceWrite;

  factory _TimetablePerformanceWrite.fromJson(Map<String, dynamic> json) =
      _$_TimetablePerformanceWrite.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get sceneId => throw _privateConstructorUsedError;
  @override
  Set<int> get artistIds => throw _privateConstructorUsedError;
  @override
  String? get typeOfPerformance => throw _privateConstructorUsedError;
  @override
  DateTime? get startingDateTime => throw _privateConstructorUsedError;
  @override
  DateTime? get endingDateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimetablePerformanceWriteCopyWith<_TimetablePerformanceWrite>
      get copyWith => throw _privateConstructorUsedError;
}
