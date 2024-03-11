// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanAdapter extends TypeAdapter<Plan> {
  @override
  final int typeId = 2;

  @override
  Plan read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Plan(
      startDate: fields[3] as DateTime,
      name: fields[0] as String,
      price: fields[1] as double,
      percent: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Plan obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.percent)
      ..writeByte(3)
      ..write(obj.startDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlanAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
