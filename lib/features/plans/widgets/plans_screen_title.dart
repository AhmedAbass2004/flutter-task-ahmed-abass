import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/helpers/extensions/navigation_extension.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class PlansScreenTitle extends StatelessWidget {
  const PlansScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
              width: 24.w,
              child: InkWell(
                onTap: () {
                  context.pop();
                },
                child: Icon(
                  Icons.chevron_left,
                  size: 24.r,
                  color: const Color.fromARGB(255, 4, 3, 3),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            SizedBox(
              width: 292.w,
              child: Text(
                'أختر الباقات اللى تناسبك',
                style: AppTextStyles.styleW500Size24black,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Text(
          'أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك',
          style: AppTextStyles.styleW400Size14grey80090F1F,
        ),
      ],
    );
  }
}
