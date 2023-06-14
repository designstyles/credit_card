import 'package:credit_capture/app/di_packages/models/domain/enums.dart';

class CardUtils {
  static CardTypeEnum getCardTypeFrmNumber(String input) {
    CardTypeEnum cardType;
    if (input.startsWith(
      RegExp(
        '((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))',
      ),
    )) {
      cardType = CardTypeEnum.master;
    } else if (input.startsWith(RegExp('[4]'))) {
      cardType = CardTypeEnum.visa;
    } else if (input.startsWith(RegExp('((34)|(37))'))) {
      cardType = CardTypeEnum.americanExpress;
    } else if (input.startsWith(RegExp('((6[45])|(6011))'))) {
      cardType = CardTypeEnum.discover;
    } else if (input.startsWith(RegExp('((30[0-5])|(3[89])|(36)|(3095))'))) {
      cardType = CardTypeEnum.dinersClub;
    } else if (input.length <= 8) {
      cardType = CardTypeEnum.other;
    } else {
      cardType = CardTypeEnum.invalid;
    }
    return cardType;
  }
}
