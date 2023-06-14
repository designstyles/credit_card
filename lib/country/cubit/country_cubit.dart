import 'dart:math';

import 'package:credit_capture/app/di_packages/models/domain/country.dart';
import 'package:credit_capture/app/di_packages/use_case/countries/delete_all_countries.dart';
import 'package:credit_capture/app/di_packages/use_case/countries/get_all_countries.dart';
import 'package:credit_capture/app/di_packages/use_case/countries/save_banned_countries.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'country_cubit.freezed.dart';
part 'country_state.dart';

@injectable
class CountryListCubit extends Cubit<CountryState> {
  CountryListCubit(
    this._getAllCountryUseCase,
    this._deleteAllCountriesUseCase,
    this._saveBannedCountriesUseCase,
  ) : super(const CountryState.loading());
  final GetAllCountriesUseCase _getAllCountryUseCase;
  final DeleteAllCountriesUseCase _deleteAllCountriesUseCase;
  final SaveBannedCountriesUseCase _saveBannedCountriesUseCase;
  List<Country> _cards = [];

  Future<void> init() async {
    await getAllCountries();
  }

  Future<void> getAllCountries() async {
    emit(const CountryState.loading());
    _cards = _getAllCountryUseCase();
    if (_cards.isNotEmpty) {
      emit(CountryState.success(List.of(_cards)));
    } else {
      emit(const CountryState.empty());
    }
  }

  Future<void> generateRandomCountries() async {
    emit(const CountryState.loading());
    if (_cards.isNotEmpty) {
      await _deleteAll();
    }
    final list = List<String>.generate(10, (i) => _getCode());
    await _saveBannedCountriesUseCase.call(list);
    _cards = _getAllCountryUseCase();
    if (_cards.isNotEmpty) {
      emit(CountryState.success(List.of(_cards)));
    } else {
      emit(const CountryState.empty());
    }
  }

  Future<void> _deleteAll() async {
    emit(const CountryState.loading());
    await _deleteAllCountriesUseCase();
    emit(const CountryState.empty());
  }

  String _getCode() {
    final countryCodes = <Map<String, dynamic>>[
      {
        'iso2_cc': 'AF',
      },
      {
        'iso2_cc': 'AX',
      },
      {
        'iso2_cc': 'AL',
      },
      {
        'iso2_cc': 'DZ',
      },
      {
        'iso2_cc': 'AS',
      },
      {
        'iso2_cc': 'AD',
      },
      {
        'iso2_cc': 'AO',
      },
      {
        'iso2_cc': 'AI',
      },
      {
        'iso2_cc': 'AG',
      },
      {
        'iso2_cc': 'AR',
      },
      {
        'iso2_cc': 'AM',
      },
      {
        'iso2_cc': 'AW',
      },
      {
        'iso2_cc': 'AC',
      },
      {
        'iso2_cc': 'AU',
      },
      {
        'iso2_cc': 'AT',
      },
      {
        'iso2_cc': 'AZ',
      },
      {
        'iso2_cc': 'BS',
      },
      {
        'iso2_cc': 'BH',
      },
      {
        'iso2_cc': 'BD',
      },
      {
        'iso2_cc': 'BB',
      },
      {
        'iso2_cc': 'BY',
      },
      {
        'iso2_cc': 'BE',
      },
      {
        'iso2_cc': 'BZ',
      },
      {
        'iso2_cc': 'BJ',
      },
      {
        'iso2_cc': 'BM',
      },
      {
        'iso2_cc': 'BT',
      },
      {
        'iso2_cc': 'BO',
      },
      {
        'iso2_cc': 'BA',
      },
      {
        'iso2_cc': 'BW',
      },
      {
        'iso2_cc': 'BR',
      },
      {
        'iso2_cc': 'IO',
      },
      {
        'iso2_cc': 'VG',
      },
      {
        'iso2_cc': 'BN',
      },
      {
        'iso2_cc': 'BG',
      },
      {
        'iso2_cc': 'BF',
      },
      {
        'iso2_cc': 'BI',
      },
      {
        'iso2_cc': 'KH',
      },
      {
        'iso2_cc': 'CM',
      },
      {
        'iso2_cc': 'CA',
      },
      {
        'iso2_cc': 'CV',
      },
      {
        'iso2_cc': 'BQ',
      },
      {
        'iso2_cc': 'KY',
      },
      {
        'iso2_cc': 'CF',
      },
      {
        'iso2_cc': 'TD',
      },
      {
        'iso2_cc': 'CL',
      },
      {
        'iso2_cc': 'CN',
      },
      {
        'iso2_cc': 'CX',
      },
      {
        'iso2_cc': 'CC',
      },
      {
        'iso2_cc': 'CO',
      },
      {
        'iso2_cc': 'KM',
      },
      {
        'iso2_cc': 'CD',
      },
      {
        'iso2_cc': 'CG',
      },
      {
        'iso2_cc': 'CK',
      },
      {
        'iso2_cc': 'CR',
      },
      {
        'iso2_cc': 'CI',
      },
      {
        'iso2_cc': 'HR',
      },
      {
        'iso2_cc': 'CU',
      },
      {
        'iso2_cc': 'CW',
      },
      {
        'iso2_cc': 'CY',
      },
      {
        'iso2_cc': 'CZ',
      },
      {
        'iso2_cc': 'DK',
      },
      {
        'iso2_cc': 'DJ',
      },
      {
        'iso2_cc': 'DM',
      },
      {
        'iso2_cc': 'DO',
      },
      {
        'iso2_cc': 'TL',
      },
      {
        'iso2_cc': 'EC',
      },
      {
        'iso2_cc': 'EG',
      },
      {
        'iso2_cc': 'SV',
      },
      {
        'iso2_cc': 'GQ',
      },
      {
        'iso2_cc': 'ER',
      },
      {
        'iso2_cc': 'EE',
      },
      {
        'iso2_cc': 'SZ',
      },
      {
        'iso2_cc': 'ET',
      },
      {
        'iso2_cc': 'FK',
      },
      {
        'iso2_cc': 'FO',
      },
      {
        'iso2_cc': 'FJ',
      },
      {
        'iso2_cc': 'FI',
      },
      {
        'iso2_cc': 'FR',
      },
      {
        'iso2_cc': 'GF',
      },
      {
        'iso2_cc': 'PF',
      },
      {
        'iso2_cc': 'GA',
      },
      {
        'iso2_cc': 'GM',
      },
      {
        'iso2_cc': 'GE',
      },
      {
        'iso2_cc': 'DE',
      },
      {
        'iso2_cc': 'GH',
      },
      {
        'iso2_cc': 'GI',
      },
      {
        'iso2_cc': 'GR',
      },
      {
        'iso2_cc': 'GL',
      },
      {
        'iso2_cc': 'GD',
      },
      {
        'iso2_cc': 'GP',
      },
      {
        'iso2_cc': 'GU',
      },
      {
        'iso2_cc': 'GT',
      },
      {
        'iso2_cc': 'GG',
      },
      {
        'iso2_cc': 'GN',
      },
      {
        'iso2_cc': 'GW',
      },
      {
        'iso2_cc': 'GY',
      },
      {
        'iso2_cc': 'HT',
      },
      {
        'iso2_cc': 'HM',
      },
      {
        'iso2_cc': 'HN',
      },
      {
        'iso2_cc': 'HK',
      },
      {
        'iso2_cc': 'HU',
      },
      {
        'iso2_cc': 'IS',
      },
      {
        'iso2_cc': 'IN',
      },
      {
        'iso2_cc': 'ID',
      },
      {
        'iso2_cc': 'IR',
      },
      {
        'iso2_cc': 'IQ',
      },
      {
        'iso2_cc': 'IE',
      },
      {
        'iso2_cc': 'IM',
      },
      {
        'iso2_cc': 'IL',
      },
      {
        'iso2_cc': 'IT',
      },
      {
        'iso2_cc': 'JM',
      },
      {
        'iso2_cc': 'JP',
      },
      {
        'iso2_cc': 'JE',
      },
      {
        'iso2_cc': 'JO',
      },
      {
        'iso2_cc': 'KZ',
      },
      {
        'iso2_cc': 'KE',
      },
      {
        'iso2_cc': 'KI',
      },
      {
        'iso2_cc': 'XK',
      },
      {
        'iso2_cc': 'KW',
      },
      {
        'iso2_cc': 'KG',
      },
      {
        'iso2_cc': 'LA',
      },
      {
        'iso2_cc': 'LV',
      },
      {
        'iso2_cc': 'LB',
      },
      {
        'iso2_cc': 'LS',
      },
      {
        'iso2_cc': 'LR',
      },
      {
        'iso2_cc': 'LY',
      },
      {
        'iso2_cc': 'LI',
      },
      {
        'iso2_cc': 'LT',
      },
      {
        'iso2_cc': 'LU',
      },
      {
        'iso2_cc': 'MO',
      },
      {
        'iso2_cc': 'MK',
      },
      {
        'iso2_cc': 'MG',
      },
      {
        'iso2_cc': 'MW',
      },
      {
        'iso2_cc': 'MY',
      },
      {
        'iso2_cc': 'MV',
      },
      {
        'iso2_cc': 'ML',
      },
      {
        'iso2_cc': 'MT',
      },
      {
        'iso2_cc': 'MH',
      },
      {
        'iso2_cc': 'MQ',
      },
      {
        'iso2_cc': 'MR',
      },
      {
        'iso2_cc': 'MU',
      },
      {
        'iso2_cc': 'YT',
      },
      {
        'iso2_cc': 'MX',
      },
      {
        'iso2_cc': 'FM',
      },
      {
        'iso2_cc': 'MD',
      },
      {
        'iso2_cc': 'MC',
      },
      {
        'iso2_cc': 'MN',
      },
      {
        'iso2_cc': 'ME',
      },
      {
        'iso2_cc': 'MS',
      },
      {
        'iso2_cc': 'MA',
      },
      {
        'iso2_cc': 'MZ',
      },
      {
        'iso2_cc': 'MM',
      },
      {
        'iso2_cc': 'NA',
      },
      {
        'iso2_cc': 'NR',
      },
      {
        'iso2_cc': 'NP',
      },
      {
        'iso2_cc': 'NL',
      },
      {
        'iso2_cc': 'NC',
      },
      {
        'iso2_cc': 'NZ',
      },
      {
        'iso2_cc': 'NI',
      },
      {
        'iso2_cc': 'NE',
      },
      {
        'iso2_cc': 'NG',
      },
      {
        'iso2_cc': 'NU',
      },
      {
        'iso2_cc': 'NF',
      },
      {
        'iso2_cc': 'KP',
      },
      {
        'iso2_cc': 'MP',
      },
      {
        'iso2_cc': 'NO',
      },
      {
        'iso2_cc': 'OM',
      },
      {
        'iso2_cc': 'PK',
      },
      {
        'iso2_cc': 'PW',
      },
      {
        'iso2_cc': 'PS',
      },
      {
        'iso2_cc': 'PA',
      },
      {
        'iso2_cc': 'PG',
      },
      {
        'iso2_cc': 'PY',
      },
      {
        'iso2_cc': 'PE',
      },
      {
        'iso2_cc': 'PH',
      },
      {
        'iso2_cc': 'PL',
      },
      {
        'iso2_cc': 'PT',
      },
      {
        'iso2_cc': 'PR',
      },
      {
        'iso2_cc': 'QA',
      },
      {
        'iso2_cc': 'RE',
      },
      {
        'iso2_cc': 'RO',
      },
      {
        'iso2_cc': 'RU',
      },
      {
        'iso2_cc': 'RW',
      },
      {
        'iso2_cc': 'BL',
      },
      {
        'iso2_cc': 'SH',
      },
      {
        'iso2_cc': 'KN',
      },
      {
        'iso2_cc': 'LC',
      },
      {
        'iso2_cc': 'MF',
      },
      {
        'iso2_cc': 'PM',
      },
      {
        'iso2_cc': 'VC',
      },
      {
        'iso2_cc': 'WS',
      },
      {
        'iso2_cc': 'SM',
      },
      {
        'iso2_cc': 'ST',
      },
      {
        'iso2_cc': 'SA',
      },
      {
        'iso2_cc': 'SN',
      },
      {
        'iso2_cc': 'RS',
      },
      {
        'iso2_cc': 'SC',
      },
      {
        'iso2_cc': 'SL',
      },
      {
        'iso2_cc': 'SG',
      },
      {
        'iso2_cc': 'SX',
      },
      {
        'iso2_cc': 'SK',
      },
      {
        'iso2_cc': 'SI',
      },
      {
        'iso2_cc': 'SB',
      },
      {
        'iso2_cc': 'SO',
      },
      {
        'iso2_cc': 'ZA',
      },
      {'iso2_cc': 'GS', 'e164_key': '500-GS-0'},
      {'iso2_cc': 'KR'},
    ];

    final randomIndex = Random().nextInt(200);
    return countryCodes[randomIndex]['iso2_cc'].toString();
  }
}
