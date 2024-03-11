import 'package:hive/hive.dart';

part 'plan.g.dart';

@HiveType(typeId: 2)
class Plan {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final double price;
  @HiveField(2)
  final double percent;
  @HiveField(3)
  final DateTime startDate;

  const Plan(
      {required this.startDate,
      this.name = 'plan',
      this.price = 0.0,
      this.percent = 0});
}
