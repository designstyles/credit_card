import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CardDetailsCountrySelection extends StatelessWidget {
  const CardDetailsCountrySelection({
    super.key,
    required this.onTypeChange,
    required this.selectedCountry,
  });

  final void Function(Country value) onTypeChange;
  final String selectedCountry;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showCountryPicker(
          context: context,
          onSelect: onTypeChange,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child:
            Text(selectedCountry, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
