// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'money_currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoneyCurrency _$MoneyCurrencyFromJson(Map<String, dynamic> json) {
  return _MoneyCurrency.fromJson(json);
}

/// @nodoc
class _$MoneyCurrencyTearOff {
  const _$MoneyCurrencyTearOff();

  _MoneyCurrency call({required String name, required String symbol}) {
    return _MoneyCurrency(
      name: name,
      symbol: symbol,
    );
  }

  MoneyCurrency fromJson(Map<String, Object> json) {
    return MoneyCurrency.fromJson(json);
  }
}

/// @nodoc
const $MoneyCurrency = _$MoneyCurrencyTearOff();

/// @nodoc
mixin _$MoneyCurrency {
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyCurrencyCopyWith<MoneyCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyCurrencyCopyWith<$Res> {
  factory $MoneyCurrencyCopyWith(
          MoneyCurrency value, $Res Function(MoneyCurrency) then) =
      _$MoneyCurrencyCopyWithImpl<$Res>;
  $Res call({String name, String symbol});
}

/// @nodoc
class _$MoneyCurrencyCopyWithImpl<$Res>
    implements $MoneyCurrencyCopyWith<$Res> {
  _$MoneyCurrencyCopyWithImpl(this._value, this._then);

  final MoneyCurrency _value;
  // ignore: unused_field
  final $Res Function(MoneyCurrency) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MoneyCurrencyCopyWith<$Res>
    implements $MoneyCurrencyCopyWith<$Res> {
  factory _$MoneyCurrencyCopyWith(
          _MoneyCurrency value, $Res Function(_MoneyCurrency) then) =
      __$MoneyCurrencyCopyWithImpl<$Res>;
  @override
  $Res call({String name, String symbol});
}

/// @nodoc
class __$MoneyCurrencyCopyWithImpl<$Res>
    extends _$MoneyCurrencyCopyWithImpl<$Res>
    implements _$MoneyCurrencyCopyWith<$Res> {
  __$MoneyCurrencyCopyWithImpl(
      _MoneyCurrency _value, $Res Function(_MoneyCurrency) _then)
      : super(_value, (v) => _then(v as _MoneyCurrency));

  @override
  _MoneyCurrency get _value => super._value as _MoneyCurrency;

  @override
  $Res call({
    Object? name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_MoneyCurrency(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoneyCurrency extends _MoneyCurrency {
  const _$_MoneyCurrency({required this.name, required this.symbol})
      : super._();

  factory _$_MoneyCurrency.fromJson(Map<String, dynamic> json) =>
      _$_$_MoneyCurrencyFromJson(json);

  @override
  final String name;
  @override
  final String symbol;

  @override
  String toString() {
    return 'MoneyCurrency(name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoneyCurrency &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol);

  @JsonKey(ignore: true)
  @override
  _$MoneyCurrencyCopyWith<_MoneyCurrency> get copyWith =>
      __$MoneyCurrencyCopyWithImpl<_MoneyCurrency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MoneyCurrencyToJson(this);
  }
}

abstract class _MoneyCurrency extends MoneyCurrency {
  const factory _MoneyCurrency({required String name, required String symbol}) =
      _$_MoneyCurrency;
  const _MoneyCurrency._() : super._();

  factory _MoneyCurrency.fromJson(Map<String, dynamic> json) =
      _$_MoneyCurrency.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MoneyCurrencyCopyWith<_MoneyCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}
