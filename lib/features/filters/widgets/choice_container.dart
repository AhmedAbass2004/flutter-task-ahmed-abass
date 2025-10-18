import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer({
    super.key,
    required this.name,
    required this.isSelected,
  });

  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final selectedDecoration = BoxDecoration(
      color: AppColors.blue0D0079FE,
      borderRadius: BorderRadius.circular(30.r),
      border: Border.all(width: 2.w, color: AppColors.blue79FE),
    );

    final unSelectedDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.r),
      border: Border.all(width: 1.w, color: AppColors.grey1A000),
    );

    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: isSelected ? selectedDecoration : unSelectedDecoration,
      child: Text(
        name,
        style: isSelected
            ? AppTextStyles.styleW500Size14blue79EF
            : AppTextStyles.styleW500Size14grey0901F1,
      ),
    );
  }
}
