part of 'plan_bloc.dart';

class PlanState extends Equatable {
  final String? name;
  final double? price;
  final double? percent;
  const PlanState({
    this.name,
    this.price,
    this.percent,
  });

  PlanState copyWith({
    String? name,
    double? price,
    double? percent,
  }) {
    return PlanState(
      name: name ?? this.name,
      price: price ?? this.price,
      percent: percent ?? this.percent,
    );
  }

  PlanState setNullPrice() {
    return PlanState(name: name, price: null, percent: percent);
  }

  bool isValid() {
    if (name == null || price == null || percent == null) {
      return false;
    }
    if ((name ?? '').isEmpty) return false;
    if (percent == 0 || price == 0) return false;
    return true;
  }

  @override
  List<Object?> get props => [name, price, percent];
}
