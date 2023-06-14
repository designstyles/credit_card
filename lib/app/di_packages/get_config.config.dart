// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:credit_capture/app/di_packages/database/app_db.dart' as _i3;
import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart'
    as _i4;
import 'package:credit_capture/app/di_packages/repositories/db_country_repository_impl.dart'
    as _i5;
import 'package:credit_capture/app/di_packages/repositories/db_credit_card_repository_impl.dart'
    as _i6;
import 'package:credit_capture/app/di_packages/use_case/cards/delete_all_cards.dart'
    as _i8;
import 'package:credit_capture/app/di_packages/use_case/cards/delete_card.dart'
    as _i9;
import 'package:credit_capture/app/di_packages/use_case/cards/get_all_cards.dart'
    as _i11;
import 'package:credit_capture/app/di_packages/use_case/cards/get_card_by_card_number.dart'
    as _i15;
import 'package:credit_capture/app/di_packages/use_case/cards/get_card_by_id.dart'
    as _i12;
import 'package:credit_capture/app/di_packages/use_case/cards/save_card.dart'
    as _i14;
import 'package:credit_capture/app/di_packages/use_case/countries/delete_all_countries.dart'
    as _i7;
import 'package:credit_capture/app/di_packages/use_case/countries/get_all_countries.dart'
    as _i10;
import 'package:credit_capture/app/di_packages/use_case/countries/save_banned_countries.dart'
    as _i13;
import 'package:credit_capture/card_details/cubit/credit_card_details_cubit.dart'
    as _i18;
import 'package:credit_capture/country/cubit/country_cubit.dart' as _i17;
import 'package:credit_capture/home/cubit/cards_list_cubit.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
    gh.factory<_i4.CountryRepository>(
        () => _i5.DbCountryRepository(gh<_i3.AppDatabase>()));
    gh.factory<_i4.CreditCardRepository>(
        () => _i6.DbCreditCardRepository(gh<_i3.AppDatabase>()));
    gh.factory<_i7.DeleteAllCountriesUseCase>(
        () => _i7.DeleteAllCountriesUseCase(gh<_i4.CountryRepository>()));
    gh.factory<_i8.DeleteAllCreditCardsUseCase>(
        () => _i8.DeleteAllCreditCardsUseCase(gh<_i4.CreditCardRepository>()));
    gh.factory<_i9.DeleteCreditCardUseCase>(
        () => _i9.DeleteCreditCardUseCase(gh<_i4.CreditCardRepository>()));
    gh.factory<_i10.GetAllCountriesUseCase>(
        () => _i10.GetAllCountriesUseCase(gh<_i4.CountryRepository>()));
    gh.factory<_i11.GetAllCreditCardUseCase>(
        () => _i11.GetAllCreditCardUseCase(gh<_i4.CreditCardRepository>()));
    gh.factory<_i12.GetCreditCardByIdUseCase>(
        () => _i12.GetCreditCardByIdUseCase(gh<_i4.CreditCardRepository>()));
    gh.factory<_i13.SaveBannedCountriesUseCase>(
        () => _i13.SaveBannedCountriesUseCase(gh<_i4.CountryRepository>()));
    gh.factory<_i14.SaveCreditCardUseCase>(
        () => _i14.SaveCreditCardUseCase(gh<_i4.CreditCardRepository>()));
    gh.factory<_i15.ValidateNewCardCaptureUseCase>(() =>
        _i15.ValidateNewCardCaptureUseCase(gh<_i4.CreditCardRepository>()));
    gh.factory<_i16.CardsListCubit>(() => _i16.CardsListCubit(
          gh<_i11.GetAllCreditCardUseCase>(),
          gh<_i8.DeleteAllCreditCardsUseCase>(),
        ));
    gh.factory<_i17.CountryListCubit>(() => _i17.CountryListCubit(
          gh<_i10.GetAllCountriesUseCase>(),
          gh<_i7.DeleteAllCountriesUseCase>(),
          gh<_i13.SaveBannedCountriesUseCase>(),
        ));
    gh.factory<_i18.CreditCardDetailsCubit>(() => _i18.CreditCardDetailsCubit(
          gh<_i12.GetCreditCardByIdUseCase>(),
          gh<_i14.SaveCreditCardUseCase>(),
          gh<_i9.DeleteCreditCardUseCase>(),
          gh<_i15.ValidateNewCardCaptureUseCase>(),
        ));
    return this;
  }
}
