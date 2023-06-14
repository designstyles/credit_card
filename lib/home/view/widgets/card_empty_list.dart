import 'package:credit_capture/app/engine/translations/locale_keys.g.dart';
import 'package:credit_capture/shared/ui/app_typography.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmptyCardList extends HookWidget {
  const EmptyCardList({required this.onAddNew, super.key});
  final VoidCallback onAddNew;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          left: 10,
          child: Material(
            child: InkWell(
              onTap: onAddNew,
              child: SizedBox(
                height: 150,
                width: 150,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  color: Colors.indigo,
                  dashPattern: const [8, 4],
                  strokeWidth: 2,
                  child: const Center(
                    child: Text('1st Card'),
                  ),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            LocaleKeys.cards_list_empty.tr(),
            style: AppTypography.h318Bold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
