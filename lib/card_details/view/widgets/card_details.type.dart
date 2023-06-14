//import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:credit_capture/app/di_packages/models/domain/enums.dart';
import 'package:credit_capture/app/engine/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';

// class CardDetailsCardType extends StatefulWidget {
//   const CardDetailsCardType({
//     super.key,
//     required this.onTypeChange,
//     required this.cardTypeString,
//   });
//   final void Function(String value) onTypeChange;
//   final String cardTypeString;

//   @override
//   State<CardDetailsCardType> createState() => _CardDetailsCardTypeState();
// }

// class _CardDetailsCardTypeState extends State<CardDetailsCardType> {
//   @override
//   Widget build(BuildContext context) {
//     final cardOptions = CardTypeEnum.values
//         .map(
//           (x) => EnumToString.convertToString(x, camelCase: true),
//         )
//         .toList();
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           LocaleKeys.cards_details_card_type.tr(),
//         ),
//         DropdownButton<String>(
//           items: cardOptions.map((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//           value: widget.cardTypeString,
//           onChanged: (value) {
//             widget.onTypeChange(value!);
//           },
//         ),
//       ],
//     );
//   }
// }

class CardDetailsCardType extends StatelessWidget {
  const CardDetailsCardType({
    super.key,
    required this.onTypeChange,
    required this.cardTypeString,
  });
  final void Function(String value) onTypeChange;
  final String cardTypeString;
  @override
  Widget build(BuildContext context) {
    final cardOptions = CardTypeEnum.values
        .map(
          (x) => EnumToString.convertToString(x, camelCase: true),
        )
        .toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            LocaleKeys.cards_details_card_type.tr(),
          ),
        ),
        Expanded(
          child: DropdownButtonFormField<String>(
            items: cardOptions.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: cardTypeString,
            validator: (value) {
              if (value == LocaleKeys.cards_details_select_country.tr()) {
                return '';
              }
              return (value == null || value.isEmpty) ? '' : null;
            },
            onChanged: (value) {
              onTypeChange(value!);
            },
          ),
        ),
      ],
    );
  }
}
