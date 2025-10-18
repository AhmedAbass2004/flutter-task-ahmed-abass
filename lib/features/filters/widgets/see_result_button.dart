import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class SeeResultButton extends StatelessWidget {
  const SeeResultButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.blue79FE),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'شاهد 10,000+ نتائج',
              style: AppTextStyles.styleW700Size16White,
            ),
          ],
        ),
      ),
    );
  }
}
