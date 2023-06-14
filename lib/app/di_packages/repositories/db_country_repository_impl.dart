import 'package:credit_capture/app/di_packages/database/app_db.dart';
import 'package:credit_capture/app/di_packages/models/domain/country.dart';
import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CountryRepository)
class DbCountryRepository implements CountryRepository {
  DbCountryRepository(this._appDatabase);
  final AppDatabase _appDatabase;

  @override
  Future<void> deleteAll() async {
    await _appDatabase.deleteAllCountries();
  }

  @override
  List<Country> getAll() {
    final x = _appDatabase.getAllCountries();
    return x;
  }

  @override
  Future<void> saveExcluded(List<String> countryCodes) =>
      _appDatabase.saveCountries(countryCodes);
}
