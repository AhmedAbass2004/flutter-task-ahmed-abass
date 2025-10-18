import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('السعر', style: AppTextStyles.styleW500Size16grey8000),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 158.w,
                height: 48.h,
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(width: 1, color: AppColors.grey1A000),
                ),
                child: Text(
                  'أقل سعر',
                  style: AppTextStyles.styleW500Size14grey0901F1,
                ),
              ),
              Container(
                width: 158.w,
                height: 48.h,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(width: 1, color: AppColors.grey1A000),
                ),
                child: Text(
                  'أقصى سعر',
                  style: AppTextStyles.styleW500Size14grey0901F1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
