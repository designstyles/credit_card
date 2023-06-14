import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardDetailsBank extends HookWidget {
  const CardDetailsBank({
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
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        hintText: 'Bank',
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
