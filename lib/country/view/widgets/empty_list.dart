import 'package:credit_capture/app/engine/translations/locale_keys.g.dart';
import 'package:credit_capture/shared/ui/app_dimensions.dart';
import 'package:credit_capture/shared/ui/app_typography.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EmptyCountryList extends StatelessWidget {
  const EmptyCountryList({super.key, required this.onGenerate});
  final VoidCallback onGenerate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: AppDimensions.l,
        ),
        Center(
          child: Text(
            LocaleKeys.country_list_empty.tr(),
            style: AppTypography.h318Bold,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: AppDimensions.l,
        ),
        ElevatedButton(
          onPressed: onGenerate,
          child: const Text('Generate Random List'),
        )
      ],
    );
  }
}
