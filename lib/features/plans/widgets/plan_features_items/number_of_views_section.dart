import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class NumberOfViewsSection extends StatelessWidget {
  const NumberOfViewsSection({super.key, required this.viewsCount});

  final int viewsCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 42.h,
          width: 69.w,
          margin: EdgeInsets.only(bottom: 4.h),
          padding: EdgeInsets.all(15.h),
          alignment: Alignment.center,
          foregroundDecoration: BoxDecoration(
            color: AppColors.green0D3A813F,
            border: Border(
              left: BorderSide(color: AppColors.green3A813F, width: 1.w),
              right: BorderSide(color: AppColors.green3A813F, width: 1.w),
              top: BorderSide(color: AppColors.green3A813F, width: 1.w),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.r),
              topRight: Radius.circular(32.r),
            ),
          ),
          child: Text(
            '$viewsCount',
            style: AppTextStyles.styleW700Size14green3A813F,
          ),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black, width: 1.h),
            ),
          ),
          child: Text('ضعف عدد', style: AppTextStyles.styleW700Size12black),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black, width: 1.h),
            ),
          ),
          child: Text('المشاهدات', style: AppTextStyles.styleW700Size12black),
        ),
      ],
    );
  }
}
