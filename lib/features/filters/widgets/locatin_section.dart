import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class LocatinSection extends StatelessWidget {
  const LocatinSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71.h,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(width: 1, color: AppColors.grey1A000),
        ),
      ),
      child: ListTile(
        leading: SizedBox(
          height: 24.h,
          width: 24.w,
          child: Icon(Icons.location_on_outlined, size: 28.r),
        ),
        title: Text('الموقع', style: AppTextStyles.styleW500Size14black),
        subtitle: Text('مصر', style: AppTextStyles.styleW400Size12grey8000),
        trailing: SizedBox(
          height: 24.h,
          width: 24.w,
          child: Icon(Icons.chevron_right, size: 24.r),
        ),
      ),
    );
  }
}
