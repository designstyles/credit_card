import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCreditCardByIdUseCase {
  GetCreditCardByIdUseCase(this._repository);

  final CreditCardRepository _repository;

  Future<CreditCard?> call(int id) => _repository.getById(id);
}
