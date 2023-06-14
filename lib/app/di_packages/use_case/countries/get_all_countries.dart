import 'package:credit_capture/app/di_packages/models/domain/country.dart';
import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllCountriesUseCase {
  GetAllCountriesUseCase(this._repository);

  final CountryRepository _repository;

  List<Country> call() => _repository.getAll();
}
