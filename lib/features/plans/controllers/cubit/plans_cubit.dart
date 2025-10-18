import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'plans_state.dart';

class PlansCubit extends Cubit<PlansState> {
  PlansCubit() : super(PlansInitial());

  void togglePlanState(String plan) {
    final newSet = Set<String>.from(state.selectedPlans);

    if (state.selectedPlans.contains(plan)) {
      newSet.remove(plan);
    } else {
      newSet.add(plan);
    }

    emit(PlansChanged(newSet));
  }

  bool isSelected(String plan) {
    return state.isSelected(plan);
  }
}
