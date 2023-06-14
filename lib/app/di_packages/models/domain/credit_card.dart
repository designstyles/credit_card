import 'package:credit_capture/app/di_packages/models/domain/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card.freezed.dart';

@freezed
class CreditCard with _$CreditCard {
  const factory CreditCard({
    required int id,
    required String cardNumber,
    required CardTypeEnum cardTypeName,
    required String cvv,
    required String expiry,
    required String countryCode,
    required String bank,
    required String cardHolder,
  }) = _CreditCard;
}
