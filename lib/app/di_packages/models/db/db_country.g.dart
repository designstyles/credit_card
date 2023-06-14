// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_country.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountryDbAdapter extends TypeAdapter<CountryDb> {
  @override
  final int typeId = 2;

  @override
  CountryDb read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountryDb(
      id: fields[0] as int,
      countryCode: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CountryDb obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.countryCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryDbAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
