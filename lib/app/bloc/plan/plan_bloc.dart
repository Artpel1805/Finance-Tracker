import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'plan_event.dart';
part 'plan_state.dart';

class PlanBloc extends Bloc<PlanEvent, PlanState> {
  PlanBloc() : super(const PlanState()) {
    on<NameChanged>(_onNameChanged);
    on<PriceChanged>(_onPriceChanged);
    on<PercentChanged>(_onPercentChanged);
  }

  void _onNameChanged(NameChanged event, Emitter<PlanState> emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onPriceChanged(PriceChanged event, Emitter<PlanState> emit) {
    if (event.price == null) emit(state.setNullPrice());
    emit(state.copyWith(price: event.price));
  }

  void _onPercentChanged(PercentChanged event, Emitter<PlanState> emit) {
    emit(state.copyWith(percent: event.percent));
  }
}
