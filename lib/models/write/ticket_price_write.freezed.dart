// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ticket_price_write.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketPriceWrite _$TicketPriceWriteFromJson(Map<String, dynamic> json) {
  return _TicketPriceWrite.fromJson(json);
}

/// @nodoc
class _$TicketPriceWriteTearOff {
  const _$TicketPriceWriteTearOff();

  _TicketPriceWrite call(
      {String? name, required double price, required String currency}) {
    return _TicketPriceWrite(
      name: name,
      price: price,
      currency: currency,
    );
  }

  TicketPriceWrite fromJson(Map<String, Object> json) {
    return TicketPriceWrite.fromJson(json);
  }
}

/// @nodoc
const $TicketPriceWrite = _$TicketPriceWriteTearOff();

/// @nodoc
mixin _$TicketPriceWrite {
  String? get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketPriceWriteCopyWith<TicketPriceWrite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketPriceWriteCopyWith<$Res> {
  factory $TicketPriceWriteCopyWith(
          TicketPriceWrite value, $Res Function(TicketPriceWrite) then) =
      _$TicketPriceWriteCopyWithImpl<$Res>;
  $Res call({String? name, double price, String currency});
}

/// @nodoc
class _$TicketPriceWriteCopyWithImpl<$Res>
    implements $TicketPriceWriteCopyWith<$Res> {
  _$TicketPriceWriteCopyWithImpl(this._value, this._then);

  final TicketPriceWrite _value;
  // ignore: unused_field
  final $Res Function(TicketPriceWrite) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TicketPriceWriteCopyWith<$Res>
    implements $TicketPriceWriteCopyWith<$Res> {
  factory _$TicketPriceWriteCopyWith(
          _TicketPriceWrite value, $Res Function(_TicketPriceWrite) then) =
      __$TicketPriceWriteCopyWithImpl<$Res>;
  @override
  $Res call({String? name, double price, String currency});
}

/// @nodoc
class __$TicketPriceWriteCopyWithImpl<$Res>
    extends _$TicketPriceWriteCopyWithImpl<$Res>
    implements _$TicketPriceWriteCopyWith<$Res> {
  __$TicketPriceWriteCopyWithImpl(
      _TicketPriceWrite _value, $Res Function(_TicketPriceWrite) _then)
      : super(_value, (v) => _then(v as _TicketPriceWrite));

  @override
  _TicketPriceWrite get _value => super._value as _TicketPriceWrite;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? currency = freezed,
  }) {
    return _then(_TicketPriceWrite(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketPriceWrite implements _TicketPriceWrite {
  const _$_TicketPriceWrite(
      {this.name, required this.price, required this.currency});

  factory _$_TicketPriceWrite.fromJson(Map<String, dynamic> json) =>
      _$_$_TicketPriceWriteFromJson(json);

  @override
  final String? name;
  @override
  final double price;
  @override
  final String currency;

  @override
  String toString() {
    return 'TicketPriceWrite(name: $name, price: $price, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TicketPriceWrite &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$TicketPriceWriteCopyWith<_TicketPriceWrite> get copyWith =>
      __$TicketPriceWriteCopyWithImpl<_TicketPriceWrite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TicketPriceWriteToJson(this);
  }
}

abstract class _TicketPriceWrite implements TicketPriceWrite {
  const factory _TicketPriceWrite(
      {String? name,
      required double price,
      required String currency}) = _$_TicketPriceWrite;

  factory _TicketPriceWrite.fromJson(Map<String, dynamic> json) =
      _$_TicketPriceWrite.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TicketPriceWriteCopyWith<_TicketPriceWrite> get copyWith =>
      throw _privateConstructorUsedError;
}
