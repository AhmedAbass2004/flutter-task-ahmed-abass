import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0x1A000000),
            width: 1.h,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.blue79FE),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('التالي', style: AppTextStyles.styleW700Size16White),
            SizedBox(width: 4.w),
            SizedBox(
              width: 24.w,
              height: 24.h,
              child: Icon(Icons.arrow_forward, color: Colors.white, size: 24.r),
            ),
          ],
        ),
      ),
    );
  }
}
