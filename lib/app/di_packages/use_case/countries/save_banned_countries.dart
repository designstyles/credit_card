import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveBannedCountriesUseCase {
  SaveBannedCountriesUseCase(this._repository);

  final CountryRepository _repository;

  Future<void> call(List<String> countryCodes) =>
      _repository.saveExcluded(countryCodes);
}
