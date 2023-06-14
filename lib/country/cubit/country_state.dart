part of 'country_cubit.dart';

@freezed
class CountryState with _$CountryState {
  // const factory CountryState.initial() = _Initial;
  const factory CountryState.loading() = CountryListLoading;
  const factory CountryState.empty() = CountryListEmpty;

  const factory CountryState.success(List<Country> countries) =
      CountryListSuccess;
}
