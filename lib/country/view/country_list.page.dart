import 'package:credit_capture/app/engine/cubit_hooks.dart';
import 'package:credit_capture/app/engine/translations/locale_keys.g.dart';
import 'package:credit_capture/country/cubit/country_cubit.dart';
import 'package:credit_capture/country/view/widgets/empty_list.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CountryListPage extends HookWidget {
  const CountryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = useCubit<CountryListCubit>();
    final state = useCubitBuilder<CountryListCubit, CountryState>(cubit);

    useEffect(
      () {
        cubit.init();
        return null;
      },
      [cubit],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.country_list_title.tr()),
      ),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        empty: () => EmptyCountryList(
          onGenerate: cubit.generateRandomCountries,
        ),
        success: (countries) {
          return Column(
            children: [
              Text(LocaleKeys.country_list_title.tr()),
              for (final country in countries) ...[
                Text(country.countryCode),
              ],
              ElevatedButton(
                onPressed: cubit.generateRandomCountries,
                child: Text(LocaleKeys.country_list_add.tr()),
              )
            ],
          );
          // return CardList(cards: cards);
        },
      ),
    );
  }
}
