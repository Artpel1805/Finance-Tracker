part of 'plan_bloc.dart';

abstract class PlanEvent {
  const PlanEvent();
}

class NameChanged extends PlanEvent {
  final String? name;
  const NameChanged({this.name});
}

class PriceChanged extends PlanEvent {
  final double? price;
  const PriceChanged({this.price});
}

class PercentChanged extends PlanEvent {
  final double? percent;
  const PercentChanged({this.percent});
}
