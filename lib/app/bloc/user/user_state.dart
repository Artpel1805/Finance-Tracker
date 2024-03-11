part of 'user_bloc.dart';

class UserState extends Equatable {
  final double income;
  final List<Plan> plans;
  const UserState({
    this.income = 0.0,
    this.plans = const [],
  });

  @override
  List<Object> get props => [income, plans];

  UserState copyWith({
    double? income,
    List<Plan>? plans,
  }) {
    return UserState(
      income: income ?? this.income,
      plans: plans ?? this.plans,
    );
  }

  UserState addPlan(Plan plan) {
    List<Plan> newPlans = List.from(plans);
    newPlans.add(plan);
    return copyWith(plans: newPlans);
  }

  UserState removePlan(Plan plan) {
    List<Plan> newPlans = List.from(plans);
    newPlans.remove(plan);
    return copyWith(plans: newPlans);
  }
}
