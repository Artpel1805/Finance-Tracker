import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:saving_goal/app/model/plans/plan.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<ChangedIncome>(_onIncomeChanged);
    on<PlanAdded>(_onPlanAdded);
  }

  void _onIncomeChanged(ChangedIncome event, Emitter<UserState> emit) {
    emit(state.copyWith(income: event.income));
  }

  void _onPlanAdded(PlanAdded event, Emitter<UserState> emit) {
    emit(state.addPlan(event.plan));
  }
}
