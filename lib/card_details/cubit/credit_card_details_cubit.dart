import 'package:country_picker/country_picker.dart';
import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:credit_capture/app/di_packages/models/domain/enums.dart';
import 'package:credit_capture/app/di_packages/use_case/cards/delete_card.dart';
import 'package:credit_capture/app/di_packages/use_case/cards/get_card_by_card_number.dart';
import 'package:credit_capture/app/di_packages/use_case/cards/get_card_by_id.dart';
import 'package:credit_capture/app/di_packages/use_case/cards/save_card.dart';
import 'package:credit_capture/app/engine/utils.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'credit_card_details_cubit.freezed.dart';
part 'credit_card_details_page_state.dart';

@injectable
class CreditCardDetailsCubit extends Cubit<CreditCardDetailsPageState> {
  CreditCardDetailsCubit(
    this._getCreditCardByIdUseCase,
    this._saveCreditCardUseCase,
    this._deleteCreditCardUseCase,
    this._validateCard,
  ) : super(const CreditCardDetailsPageState.loading());
  final GetCreditCardByIdUseCase _getCreditCardByIdUseCase;
  final SaveCreditCardUseCase _saveCreditCardUseCase;
  final DeleteCreditCardUseCase _deleteCreditCardUseCase;
  final ValidateNewCardCaptureUseCase _validateCard;

  late CreditCard _currentCreditCard;

  Future<void> init(int? cardId) async {
    _currentCreditCard =
        await _getCreditCardByIdUseCase(cardId ?? 0) ?? defaultCc;
    emit(CreditCardDetailsPageState.loadCreditCard(_currentCreditCard));
  }

  Future<void> saveCreditCard({
    required String cardNumber,
    required String cardType,
    required String cvv,
    required String expiry,
    required String countryCode,
    required String bank,
    required String cardHolder,
  }) async {
    final cardTypeEnum =
        EnumToString.fromString(CardTypeEnum.values, cardType, camelCase: true);
    final cardToSave = CreditCard(
      id: _currentCreditCard.id,
      cardNumber: cardNumber,
      cardTypeName: cardTypeEnum!,
      cvv: cvv,
      expiry: expiry,
      countryCode: countryCode,
      bank: bank,
      cardHolder: cardHolder,
    );
    emit(const CreditCardDetailsPageState.validating());
    final serverValidation = await _validateCard(cardToSave);
    if (serverValidation == null) {
      await _saveCreditCardUseCase(cardToSave);
      emit(const CreditCardDetailsPageState.saveingCard());
      emit(const CreditCardDetailsPageState.saveCreditCard());
    } else {
      emit(CreditCardDetailsPageState.validatingFailed(serverValidation));
      emit(CreditCardDetailsPageState.loadCreditCard(_currentCreditCard));
    }
  }

  Future<void> deleteCreditCard(int id) async {
    await _deleteCreditCardUseCase(id);
    emit(const CreditCardDetailsPageState.deleteCreditCard());
  }

  void updateCardTypeOnCardNumber(String cardNumber) {
    final result = CardUtils.getCardTypeFrmNumber(cardNumber);
    emit(CreditCardDetailsPageState.calculateCardType(result));
    emit(
      CreditCardDetailsPageState.loadCreditCard(
        _currentCreditCard.copyWith(
          cardNumber: cardNumber,
          cardTypeName: result,
        ),
      ),
    );
  }

  void updateCardTypeOnCardTypeChange(String cardText) {
    final result =
        EnumToString.fromString(CardTypeEnum.values, cardText, camelCase: true);
    emit(CreditCardDetailsPageState.calculateCardType(result!));
    emit(
      CreditCardDetailsPageState.loadCreditCard(
        _currentCreditCard.copyWith(
          cardTypeName: result,
        ),
      ),
    );
  }

  void updateCardIssuingCountry(Country country) {
    emit(CreditCardDetailsPageState.setCountry(country));
    emit(
      CreditCardDetailsPageState.loadCreditCard(
        _currentCreditCard.copyWith(
          countryCode: country.countryCode,
        ),
      ),
    );
  }

  CreditCard get defaultCc => const CreditCard(
        id: 0,
        cardNumber: '',
        cardTypeName: CardTypeEnum.invalid,
        cvv: '',
        expiry: '',
        countryCode: '',
        bank: '',
        cardHolder: '',
      );
}
