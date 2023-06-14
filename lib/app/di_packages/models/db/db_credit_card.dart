import 'package:credit_capture/app/di_packages/models/db/db_enum.dart';
import 'package:hive/hive.dart';

part 'db_credit_card.g.dart';

@HiveType(typeId: 0)
class CreditCardDb extends HiveObject {
  CreditCardDb({
    required this.id,
    required this.cardNumber,
    required this.cardTypeName,
    required this.cvv,
    required this.expiry,
    required this.countryCode,
    required this.bank,
    required this.cardHolder,
  });

  @HiveField(0)
  int id;

  @HiveField(1)
  String cardNumber;

  @HiveField(2)
  DBCardTypeEnum cardTypeName;

  @HiveField(3)
  String cvv;

  @HiveField(4)
  String expiry;

  @HiveField(5)
  String countryCode;

  @HiveField(6)
  String cardHolder;

  @HiveField(7)
  String bank;
}
