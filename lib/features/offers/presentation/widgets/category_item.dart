import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.name, required this.isSelected});

  final String name;
  final bool isSelected;

  final selectedDecoration = BoxDecoration(
    color: AppColors.orange0DF95B1C,
    border: Border.all(color: AppColors.blue1A3B4CF2, width: 1.w),
    borderRadius: BorderRadius.circular(4),
  );

  final unSelectedDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: AppColors.grey1A000, width: 1.w),
    borderRadius: BorderRadius.circular(4),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      margin: EdgeInsets.only(left: 8),
      decoration: isSelected ? selectedDecoration : unSelectedDecoration,
      child: Center(
        child: Text(
          name,
          style: isSelected
              ? AppTextStyles.styleW500Size14orange95B1C
              : AppTextStyles.styleW500Size14grey0901F1,
        ),
      ),
    );
  }
}
