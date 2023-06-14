import 'package:credit_capture/app/di_packages/models/domain/enums.dart';
import 'package:hive/hive.dart';

part 'db_enum.g.dart';

@HiveType(typeId: 1)
enum DBCardTypeEnum {
  @HiveField(0)
  master,
  @HiveField(1)
  visa,
  @HiveField(2)
  discover,
  @HiveField(3)
  americanExpress,
  @HiveField(4)
  dinersClub,
  @HiveField(5)
  other,
  @HiveField(6)
  invalid
}

extension DBCardTypeEnumX on DBCardTypeEnum {
  CardTypeEnum asDomain() {
    final map = {
      'americanExpress': CardTypeEnum.americanExpress,
      'dinersClub': CardTypeEnum.dinersClub,
      'discover': CardTypeEnum.discover,
      'invalid': CardTypeEnum.invalid,
      'master': CardTypeEnum.master,
      'other': CardTypeEnum.other,
      'visa': CardTypeEnum.visa,
    };
    final lookup = toString().split('.').last;
    return map[lookup] ?? CardTypeEnum.invalid;
  }
}

extension CardTypeEnumX on CardTypeEnum {
  DBCardTypeEnum asDbModel() {
    final map = {
      'americanExpress': DBCardTypeEnum.americanExpress,
      'dinersClub': DBCardTypeEnum.dinersClub,
      'discover': DBCardTypeEnum.discover,
      'invalid': DBCardTypeEnum.invalid,
      'master': DBCardTypeEnum.master,
      'other': DBCardTypeEnum.other,
      'visa': DBCardTypeEnum.visa,
    };
    final lookup = toString().split('.').last;
    return map[lookup] ?? DBCardTypeEnum.invalid;
  }
}
