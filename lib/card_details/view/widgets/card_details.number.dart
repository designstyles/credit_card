import 'package:credit_capture/shared/data/formatters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardDetailsCardNumber extends HookWidget {
  const CardDetailsCardNumber({
    super.key,
    required this.text,
    required this.onChangeTyped,
  });
  final String text;
  final void Function(String) onChangeTyped;

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: text);
    return TextFormField(
      onChanged: onChangeTyped,
      controller: textController,
      validator: (value) => (value == null || value.isEmpty) ? '' : null,
      keyboardType: TextInputType.number,
      inputFormatters: [
        CardNumberInputFormatter(),
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(19),
      ],
      decoration: const InputDecoration(
        hintText: 'Card Number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide(
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide(
            width: 2,
          ),
        ),
      ),
    );
  }
}
