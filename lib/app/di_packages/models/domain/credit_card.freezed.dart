// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCard {
  int get id => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  CardTypeEnum get cardTypeName => throw _privateConstructorUsedError;
  String get cvv => throw _privateConstructorUsedError;
  String get expiry => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get bank => throw _privateConstructorUsedError;
  String get cardHolder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditCardCopyWith<CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardCopyWith<$Res> {
  factory $CreditCardCopyWith(
          CreditCard value, $Res Function(CreditCard) then) =
      _$CreditCardCopyWithImpl<$Res, CreditCard>;
  @useResult
  $Res call(
      {int id,
      String cardNumber,
      CardTypeEnum cardTypeName,
      String cvv,
      String expiry,
      String countryCode,
      String bank,
      String cardHolder});
}

/// @nodoc
class _$CreditCardCopyWithImpl<$Res, $Val extends CreditCard>
    implements $CreditCardCopyWith<$Res> {
  _$CreditCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardNumber = null,
    Object? cardTypeName = null,
    Object? cvv = null,
    Object? expiry = null,
    Object? countryCode = null,
    Object? bank = null,
    Object? cardHolder = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardTypeName: null == cardTypeName
          ? _value.cardTypeName
          : cardTypeName // ignore: cast_nullable_to_non_nullable
              as CardTypeEnum,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolder: null == cardHolder
          ? _value.cardHolder
          : cardHolder // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditCardCopyWith<$Res>
    implements $CreditCardCopyWith<$Res> {
  factory _$$_CreditCardCopyWith(
          _$_CreditCard value, $Res Function(_$_CreditCard) then) =
      __$$_CreditCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String cardNumber,
      CardTypeEnum cardTypeName,
      String cvv,
      String expiry,
      String countryCode,
      String bank,
      String cardHolder});
}

/// @nodoc
class __$$_CreditCardCopyWithImpl<$Res>
    extends _$CreditCardCopyWithImpl<$Res, _$_CreditCard>
    implements _$$_CreditCardCopyWith<$Res> {
  __$$_CreditCardCopyWithImpl(
      _$_CreditCard _value, $Res Function(_$_CreditCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardNumber = null,
    Object? cardTypeName = null,
    Object? cvv = null,
    Object? expiry = null,
    Object? countryCode = null,
    Object? bank = null,
    Object? cardHolder = null,
  }) {
    return _then(_$_CreditCard(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardTypeName: null == cardTypeName
          ? _value.cardTypeName
          : cardTypeName // ignore: cast_nullable_to_non_nullable
              as CardTypeEnum,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: null == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      bank: null == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolder: null == cardHolder
          ? _value.cardHolder
          : cardHolder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreditCard implements _CreditCard {
  const _$_CreditCard(
      {required this.id,
      required this.cardNumber,
      required this.cardTypeName,
      required this.cvv,
      required this.expiry,
      required this.countryCode,
      required this.bank,
      required this.cardHolder});

  @override
  final int id;
  @override
  final String cardNumber;
  @override
  final CardTypeEnum cardTypeName;
  @override
  final String cvv;
  @override
  final String expiry;
  @override
  final String countryCode;
  @override
  final String bank;
  @override
  final String cardHolder;

  @override
  String toString() {
    return 'CreditCard(id: $id, cardNumber: $cardNumber, cardTypeName: $cardTypeName, cvv: $cvv, expiry: $expiry, countryCode: $countryCode, bank: $bank, cardHolder: $cardHolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardTypeName, cardTypeName) ||
                other.cardTypeName == cardTypeName) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.expiry, expiry) || other.expiry == expiry) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.cardHolder, cardHolder) ||
                other.cardHolder == cardHolder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, cardNumber, cardTypeName,
      cvv, expiry, countryCode, bank, cardHolder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      __$$_CreditCardCopyWithImpl<_$_CreditCard>(this, _$identity);
}

abstract class _CreditCard implements CreditCard {
  const factory _CreditCard(
      {required final int id,
      required final String cardNumber,
      required final CardTypeEnum cardTypeName,
      required final String cvv,
      required final String expiry,
      required final String countryCode,
      required final String bank,
      required final String cardHolder}) = _$_CreditCard;

  @override
  int get id;
  @override
  String get cardNumber;
  @override
  CardTypeEnum get cardTypeName;
  @override
  String get cvv;
  @override
  String get expiry;
  @override
  String get countryCode;
  @override
  String get bank;
  @override
  String get cardHolder;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}
