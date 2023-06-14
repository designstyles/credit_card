import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteAllCountriesUseCase {
  DeleteAllCountriesUseCase(this._repository);

  final CountryRepository _repository;

  Future<void> call() => _repository.deleteAll();
}
