part of 'plans_cubit.dart';

sealed class PlansState extends Equatable {
  const PlansState(this.selectedPlans);

  final Set<String> selectedPlans;

  bool isSelected(String plan) => selectedPlans.contains(plan);

  @override
  List<Object?> get props => [selectedPlans];
}

final class PlansInitial extends PlansState {
  const PlansInitial() : super(const {});
}

final class PlansChanged extends PlansState {
  const PlansChanged(super.selectedPlans);

  @override
  List<Object?> get props => [selectedPlans];
}
