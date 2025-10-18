import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';

class PlanContainer extends StatelessWidget {
  const PlanContainer({
    super.key,
    required this.height,
    required this.title,
    required this.content,
  });

  final double height;
  final Widget title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.grey1A000, width: 1),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0x0A090F1F),
            offset: Offset(0, 4.h),
            blurRadius: 5.h,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 24.h, child: title),
          Container(
            height: 1.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10.5.h),
            color: AppColors.grey1A000,
          ),
          content,
        ],
      ),
    );
  }
}
