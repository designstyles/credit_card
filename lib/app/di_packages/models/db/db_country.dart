import 'package:hive/hive.dart';

part 'db_country.g.dart';

@HiveType(typeId: 2)
class CountryDb extends HiveObject {
  CountryDb({
    required this.id,
    required this.countryCode,
  });

  @HiveField(0)
  int id;

  @HiveField(1)
  String countryCode;
}
