import 'package:credit_capture/app/di_packages/models/domain/country.dart';
import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';

abstract class CreditCardRepository {
  List<CreditCard> getAll();

  Future<void> deleteById(int id);

  Future<void> deleteAll();

  Future<void> save(CreditCard card);

  Future<CreditCard?> getById(int id);
  Future<String?> validateNewCard(CreditCard card);
}

abstract class CountryRepository {
  List<Country> getAll();

  Future<void> deleteAll();

  Future<void> saveExcluded(List<String> countryCodes);
}
