import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class ContactWithSupportBox extends StatelessWidget {
  const ContactWithSupportBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 7.w),
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7),
        border: Border.all(
          color: Color(0x0D000000),
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 17.h,
            child: Text(
              'باقات مخصصة لك',
              style: AppTextStyles.styleW500Size14Black,
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            height: 14.h,
            child: Text(
              'تواصل معنا لأختيار الباقة المناسبة لك',
              style: AppTextStyles.styleW400Size12Black,
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            height: 24.h,
            child: Text(
              'فريق المبيعات',
              style: AppTextStyles.styleW700Size16Blue79FE,
            ),
          ),
        ],
      ),
    );
  }
}
