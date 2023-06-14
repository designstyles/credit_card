// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_credit_card.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreditCardDbAdapter extends TypeAdapter<CreditCardDb> {
  @override
  final int typeId = 0;

  @override
  CreditCardDb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreditCardDb(
      id: fields[0] as int,
      cardNumber: fields[1] as String,
      cardTypeName: fields[2] as DBCardTypeEnum,
      cvv: fields[3] as String,
      expiry: fields[4] as String,
      countryCode: fields[5] as String,
      bank: fields[7] as String,
      cardHolder: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CreditCardDb obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cardNumber)
      ..writeByte(2)
      ..write(obj.cardTypeName)
      ..writeByte(3)
      ..write(obj.cvv)
      ..writeByte(4)
      ..write(obj.expiry)
      ..writeByte(5)
      ..write(obj.countryCode)
      ..writeByte(6)
      ..write(obj.cardHolder)
      ..writeByte(7)
      ..write(obj.bank);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreditCardDbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
