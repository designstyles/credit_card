import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteCreditCardUseCase {
  DeleteCreditCardUseCase(this._repository);

  final CreditCardRepository _repository;

  Future<void> call(int id) => _repository.deleteById(id);
}
