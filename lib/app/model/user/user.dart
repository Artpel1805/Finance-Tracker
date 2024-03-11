import 'package:hive/hive.dart';
import 'package:saving_goal/app/model/plans/plan.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class User {
  @HiveField(0)
  final double income;
  @HiveField(1)
  final List<Plan> plans;

  const User({this.income = 0.0, this.plans = const []});
}
