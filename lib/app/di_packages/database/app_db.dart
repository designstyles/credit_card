import 'dart:math';

import 'package:credit_capture/app/di_packages/models/db/db_country.dart';
import 'package:credit_capture/app/di_packages/models/db/db_credit_card.dart';
import 'package:credit_capture/app/di_packages/models/db/db_enum.dart';
import 'package:credit_capture/app/di_packages/models/domain/country.dart';
import 'package:credit_capture/app/di_packages/models/domain/credit_card.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

const String _cardBox = 'cards';
const String _countriesBox = 'countries';

@Singleton()
class AppDatabase {
  factory AppDatabase() => _instance;
  AppDatabase._constructor();

  static final AppDatabase _instance = AppDatabase._constructor();

  late Box<CreditCardDb> _cardsBox;
  late Box<CountryDb> _countryBox;

  Future<void> initialize() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter<CreditCardDb>(CreditCardDbAdapter())
      ..registerAdapter(DBCardTypeEnumAdapter())
      ..registerAdapter<CountryDb>(CountryDbAdapter());
    _cardsBox = await Hive.openBox<CreditCardDb>(_cardBox);
    _countryBox = await Hive.openBox<CountryDb>(_countriesBox);
  }

  Future<void> save(CreditCard card) async {
    final cardId = card.id != 0 ? card.id : Random().nextInt(1000);
    await _cardsBox.put(
      cardId,
      CreditCardDb(
        id: cardId,
        cardNumber: card.cardNumber,
        cardTypeName: card.cardTypeName.asDbModel(),
        cvv: card.cvv,
        expiry: card.expiry,
        countryCode: card.countryCode,
        bank: card.bank,
        cardHolder: card.cardHolder,
      ),
    );
  }

  Future<bool> validateNewCard(CreditCard card) async {
    final duplicate = _cardsBox.values.any(
      (element) =>
          card.id == 0 &&
          element.cardNumber == card.cardNumber &&
          element.bank == card.bank,
    );
    if (duplicate) {
      return false;
    }
    return true;
  }

  Future<bool> checkCountry(CreditCard card) async {
    final bannedCountries = getAllCountries();
    if (bannedCountries
        .any((element) => element.countryCode == card.countryCode)) {
      return false;
    }
    return true;
  }

  Future<void> deleteById(int id) async {
    await _cardsBox.delete(id);
  }

  Future<void> deleteAll() async {
    await _cardsBox.clear();
  }

  List<CreditCard> getAll() {
    return _cardsBox.values.map(_fromDb).toList();
  }

  CreditCard? getById(int id) {
    final creditCardDb = _cardsBox.get(id);
    if (creditCardDb != null) {
      return _fromDb(creditCardDb);
    }

    return null;
  }

  CreditCard _fromDb(CreditCardDb cardDb) => CreditCard(
        id: cardDb.id,
        cardNumber: cardDb.cardNumber,
        cardTypeName: cardDb.cardTypeName.asDomain(),
        cvv: cardDb.cvv,
        expiry: cardDb.expiry,
        countryCode: cardDb.countryCode,
        bank: cardDb.bank,
        cardHolder: cardDb.cardHolder,
      );

  Future<void> saveCountries(List<String> countryCodes) async {
    for (final country in countryCodes) {
      final cardId = Random().nextInt(1000);
      await _countryBox.put(
        cardId,
        CountryDb(
          id: cardId,
          countryCode: country,
        ),
      );
    }
  }

  Future<void> deleteAllCountries() async {
    await _countryBox.clear();
  }

  List<Country> getAllCountries() {
    return _countryBox.values.map(_countriesFromDb).toList();
  }

  Country _countriesFromDb(CountryDb cardDb) => Country(
        id: cardDb.id,
        countryCode: cardDb.countryCode,
      );
}
