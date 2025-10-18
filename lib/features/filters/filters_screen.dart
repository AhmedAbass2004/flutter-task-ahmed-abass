import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/features/filters/controllers/cubit/filter_choices_cubit.dart';
import 'package:it_legend_task/features/filters/widgets/category_section.dart';
import 'package:it_legend_task/features/filters/widgets/choice_section.dart';
import 'package:it_legend_task/features/filters/widgets/filters_screen_title.dart';
import 'package:it_legend_task/features/filters/widgets/installments_section.dart';
import 'package:it_legend_task/features/filters/widgets/locatin_section.dart';
import 'package:it_legend_task/features/filters/widgets/price_section.dart';
import 'package:it_legend_task/features/filters/widgets/see_result_button.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterChoicesCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 12.h),
                  const FiltersScreenTitle(),
                  SizedBox(height: 32.h),
                  const CategorySection(),
                  SizedBox(height: 20.h),
                  const LocatinSection(),
                  SizedBox(height: 20.h),
                  const InstallmentsSection(),
                  SizedBox(height: 20.h),
                  ChoiceSection(
                    title: 'النوع',
                    choices: ['الكل', 'توين هاوس', 'فيلا منفصلة', 'تاون هاوس'],
                  ),
                  SizedBox(height: 20.h),
                  ChoiceSection(
                    title: 'عدد الغرف',
                    choices: ['4 غرف', '5 غرف+', 'الكل', 'غرفتين', '3 غرف'],
                  ),
                  SizedBox(height: 20.h),
                  const PriceSection(),
                  SizedBox(height: 20.h),
                  ChoiceSection(
                    title: 'طريقة الدفع',
                    choices: ['أى', 'تقسيط', 'كاش'],
                  ),
                  SizedBox(height: 20.h),
                  ChoiceSection(
                    title: 'حالة العقار',
                    choices: ['أى', 'جاهز', 'قيد الأنشاء'],
                  ),
                  SizedBox(height: 78.h),
                  const SeeResultButton(),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
