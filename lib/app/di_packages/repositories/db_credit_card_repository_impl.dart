import 'package:credit_capture/app/di_packages/database/app_db.dart';
import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:credit_capture/app/di_packages/repositories/abstract_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CreditCardRepository)
class DbCreditCardRepository implements CreditCardRepository {
  DbCreditCardRepository(this._appDatabase);
  final AppDatabase _appDatabase;

  @override
  Future<void> deleteById(int id) async {
    await _appDatabase.deleteById(id);
  }

  @override
  Future<void> deleteAll() async {
    await _appDatabase.deleteAll();
  }

  @override
  List<CreditCard> getAll() {
    return _appDatabase.getAll();
  }

  @override
  Future<CreditCard?> getById(int id) async {
    return _appDatabase.getById(id);
  }

  @override
  Future<void> save(CreditCard card) => _appDatabase.save(card);

  @override
  Future<String?> validateNewCard(CreditCard card) async {
    if (card.countryCode.isEmpty || card.countryCode.length > 4) {
      return 'An issuing country is required';
    }

    if (await _appDatabase.checkCountry(card) == false) {
      return 'Card cannot be issued by the selected country';
    }

    if (await _appDatabase.validateNewCard(card) == false) {
      return 'Card information matches an already captured card';
    }

    return null;
  }
}
