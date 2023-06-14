import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ValidateNewCardCaptureUseCase {
  ValidateNewCardCaptureUseCase(this._repository);

  final CreditCardRepository _repository;

  Future<String?> call(CreditCard card) => _repository.validateNewCard(card);
}
