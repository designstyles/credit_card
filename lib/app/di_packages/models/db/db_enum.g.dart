// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DBCardTypeEnumAdapter extends TypeAdapter<DBCardTypeEnum> {
  @override
  final int typeId = 1;

  @override
  DBCardTypeEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DBCardTypeEnum.master;
      case 1:
        return DBCardTypeEnum.visa;
      case 2:
        return DBCardTypeEnum.discover;
      case 3:
        return DBCardTypeEnum.americanExpress;
      case 4:
        return DBCardTypeEnum.dinersClub;
      case 5:
        return DBCardTypeEnum.other;
      case 6:
        return DBCardTypeEnum.invalid;
      default:
        return DBCardTypeEnum.master;
    }
  }

  @override
  void write(BinaryWriter writer, DBCardTypeEnum obj) {
    switch (obj) {
      case DBCardTypeEnum.master:
        writer.writeByte(0);
        break;
      case DBCardTypeEnum.visa:
        writer.writeByte(1);
        break;
      case DBCardTypeEnum.discover:
        writer.writeByte(2);
        break;
      case DBCardTypeEnum.americanExpress:
        writer.writeByte(3);
        break;
      case DBCardTypeEnum.dinersClub:
        writer.writeByte(4);
        break;
      case DBCardTypeEnum.other:
        writer.writeByte(5);
        break;
      case DBCardTypeEnum.invalid:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DBCardTypeEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
