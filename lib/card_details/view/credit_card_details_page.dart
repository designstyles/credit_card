import 'package:any_loading/any_loading.dart';
import 'package:auto_route/auto_route.dart';
import 'package:credit_capture/app/engine/cubit_hooks.dart';
import 'package:credit_capture/app/engine/translations/locale_keys.g.dart';
import 'package:credit_capture/card_details/cubit/credit_card_details_cubit.dart';
import 'package:credit_capture/card_details/view/widgets/card_details.bank.dart';
import 'package:credit_capture/card_details/view/widgets/card_details.card.holder.dart';
import 'package:credit_capture/card_details/view/widgets/card_details.country.dart';
import 'package:credit_capture/card_details/view/widgets/card_details.cvv.dart';
import 'package:credit_capture/card_details/view/widgets/card_details.expiry.dart';
import 'package:credit_capture/card_details/view/widgets/card_details.number.dart';
import 'package:credit_capture/card_details/view/widgets/card_details.type.dart';
import 'package:credit_capture/shared/ui/app_dimensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardDetailsPage extends HookWidget {
  CardDetailsPage({
    super.key,
    this.cardId,
  });

  final int? cardId;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cardTypeTextController = useTextEditingController(text: 'Invalid');
    final issuingCountryTextController =
        useTextEditingController(text: 'Select a country');
    final cubit = useCubit<CreditCardDetailsCubit>();
    final state =
        useCubitBuilder<CreditCardDetailsCubit, CreditCardDetailsPageState>(
      cubit,
    );

    useEffect(
      () {
        cubit.init(cardId);
        return null;
      },
      [cubit],
    );

    useCubitListener<CreditCardDetailsCubit, CreditCardDetailsPageState>(
      cubit,
      (cubit, state, context) {
        state.maybeWhen(
          loadCreditCard: (card) {
            if (card != null) {
              cardTypeTextController.text = EnumToString.convertToString(
                card.cardTypeName,
                camelCase: true,
              );
              issuingCountryTextController.text = card.countryCode;
            }
          },
          saveCreditCard: () => context.router.pop<bool>(true),
          deleteCreditCard: () => context.router.pop<bool>(true),
          validating: () {
            AnyLoading.showLoading(title: 'Validating');
          },
          saveingCard: () {
            AnyLoading.showLoading(title: 'Saving your card');
          },
          validatingFailed: (errorMessage) {
            AnyLoading.showError(errorMessage);
          },
          calculateCardType: (card) {
            cardTypeTextController.text =
                EnumToString.convertToString(card, camelCase: true);
          },
          setCountry: (country) {
            issuingCountryTextController.text = country.countryCode;
          },
          orElse: () => null,
        );
      },
      listenWhen: (state) =>
          state is CreditCardDetailsPageSave ||
          state is CreditCardDetailsPageLoad ||
          state is CreditCardDetailsPageSavingCard ||
          state is CreditCardDetailsPageValidating ||
          state is CreditCardDetailsPageValidatingFailed ||
          state is CreditCardDetailsPageCalculateCardType ||
          state is CreditCardDetailsPageSetCountry ||
          state is CreditCardDetailsPageDelete,
    );

    return state.maybeWhen(
      orElse: Container.new,
      loading: () => const Center(child: CircularProgressIndicator()),
      loadCreditCard: (card) {
        final cardNumberTextController =
            useTextEditingController(text: card?.cardNumber ?? '');
        final cvvNumberTextController =
            useTextEditingController(text: card?.cvv ?? '');
        final expiryNumberTextController =
            useTextEditingController(text: card?.expiry ?? '');
        final bankTextController =
            useTextEditingController(text: card?.bank ?? '');
        final cardHolderTextController =
            useTextEditingController(text: card?.cardHolder ?? '');
        return Scaffold(
          appBar: AppBar(
            title: Text(
              card != null
                  ? LocaleKeys.cards_details_title_edit.tr()
                  : LocaleKeys.cards_details_title_add.tr(),
            ),
            actions: [
              if (card != null)
                IconButton(
                  icon: const Icon(Icons.delete_forever_rounded),
                  tooltip: LocaleKeys.cards_details_delete.tr(),
                  onPressed: () async => cubit.deleteCreditCard(card.id),
                ),
              IconButton(
                icon: const Icon(Icons.save_rounded),
                tooltip: LocaleKeys.cards_details_save.tr(),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await cubit.saveCreditCard(
                      cardNumber: cardNumberTextController.text,
                      cardType: cardTypeTextController.text,
                      cvv: cvvNumberTextController.text,
                      expiry: expiryNumberTextController.text,
                      countryCode: issuingCountryTextController.text,
                      bank: bankTextController.text,
                      cardHolder: cardHolderTextController.text,
                    );
                  }
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.l),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CardDetailsCardNumber(
                      onChangeTyped: (p0) async {
                        cardNumberTextController.text = p0;
                        cubit.updateCardTypeOnCardNumber(p0);
                      },
                      text: cardNumberTextController.text,
                    ),
                    const SizedBox(height: AppDimensions.l),
                    CardDetailsBank(
                      onChangeTyped: (p0) async {
                        bankTextController.text = p0;
                      },
                      text: bankTextController.text,
                    ),
                    const SizedBox(height: AppDimensions.l),
                    CardDetailsCardHolder(
                      onChangeTyped: (p0) async {
                        cardHolderTextController.text = p0;
                      },
                      text: cardHolderTextController.text,
                    ),
                    const SizedBox(height: AppDimensions.l),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CardDetailsCvv(
                            onChangeTyped: (p0) async {
                              cvvNumberTextController.text = p0;
                            },
                            text: cvvNumberTextController.text,
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(
                            width: 2,
                          ),
                        ),
                        Expanded(
                          child: CardDetailsExpiry(
                            onChangeTyped: (p0) async {
                              expiryNumberTextController.text = p0;
                            },
                            text: expiryNumberTextController.text,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.l),
                    CardDetailsCardType(
                      onTypeChange: cubit.updateCardTypeOnCardTypeChange,
                      cardTypeString: cardTypeTextController.text,
                    ),
                    const SizedBox(height: AppDimensions.l),
                    Row(
                      children: [
                        const Expanded(child: Text('Issuing Country')),
                        Expanded(
                          child: CardDetailsCountrySelection(
                            onTypeChange: cubit.updateCardIssuingCountry,
                            selectedCountry: issuingCountryTextController.text,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
