part of 'user_bloc.dart';

class UserEvent {
  const UserEvent();
}

class ChangedIncome extends UserEvent {
  final double income;
  const ChangedIncome({this.income = 0.0});
}

class PlanAdded extends UserEvent {
  final Plan plan;
  const PlanAdded({required this.plan});
}
