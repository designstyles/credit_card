part of 'credit_card_details_cubit.dart';

@freezed
class CreditCardDetailsPageState with _$CreditCardDetailsPageState {
  const factory CreditCardDetailsPageState.loading() =
      _CreditCardDetailsPageLoading;
  const factory CreditCardDetailsPageState.loadCreditCard(CreditCard? card) =
      CreditCardDetailsPageLoad;
  const factory CreditCardDetailsPageState.saveCreditCard() =
      CreditCardDetailsPageSave;
  const factory CreditCardDetailsPageState.deleteCreditCard() =
      CreditCardDetailsPageDelete;
  const factory CreditCardDetailsPageState.validating() =
      CreditCardDetailsPageValidating;
  const factory CreditCardDetailsPageState.validatingFailed(String error) =
      CreditCardDetailsPageValidatingFailed;
  const factory CreditCardDetailsPageState.saveingCard() =
      CreditCardDetailsPageSavingCard;
  const factory CreditCardDetailsPageState.calculateCardType(
    CardTypeEnum cardType,
  ) = CreditCardDetailsPageCalculateCardType;
  const factory CreditCardDetailsPageState.setCountry(
    Country country,
  ) = CreditCardDetailsPageSetCountry;
}
