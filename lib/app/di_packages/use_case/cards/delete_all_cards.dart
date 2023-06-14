import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteAllCreditCardsUseCase {
  DeleteAllCreditCardsUseCase(this._repository);

  final CreditCardRepository _repository;

  Future<void> call() => _repository.deleteAll();
}
