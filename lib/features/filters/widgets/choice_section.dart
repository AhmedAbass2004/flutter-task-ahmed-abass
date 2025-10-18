import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';
import 'package:it_legend_task/features/filters/controllers/cubit/filter_choices_cubit.dart';
import 'package:it_legend_task/features/filters/widgets/choice_container.dart';

class ChoiceSection extends StatelessWidget {
  const ChoiceSection({super.key, required this.title, required this.choices});

  final String title;
  final List<String> choices;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.styleW500Size16grey8000),
          SizedBox(height: 12.h),
          BlocBuilder<FilterChoicesCubit, Map<String, String?>>(
            builder: (context, state) {
              return Wrap(
                spacing: 12.w,
                runSpacing: 12.h,
                children: choices.map((choice) {
                  final isSelected = state[title] == choice;
                  return GestureDetector(
                    onTap: () {
                      context.read<FilterChoicesCubit>().selectChoice(
                        title,
                        choice,
                      );
                    },
                    child: ChoiceContainer(
                      name: choice,
                      isSelected: isSelected,
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
