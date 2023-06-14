import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllCreditCardUseCase {
  GetAllCreditCardUseCase(this._repository);

  final CreditCardRepository _repository;

  List<CreditCard> call() => _repository.getAll();
}
