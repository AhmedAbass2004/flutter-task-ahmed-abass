import 'package:flutter_bloc/flutter_bloc.dart';

class FilterChoicesCubit extends Cubit<Map<String, String?>> {
  FilterChoicesCubit()
    : super({
        'النوع': null,
        'عدد الغرف': null,
        'طريقة الدفع': null,
        'حالة العقار': null,
      });

  void selectChoice(String key, String value) {
    final updated = Map<String, String?>.from(state);
    updated[key] = value;
    emit(updated);
  }
}
