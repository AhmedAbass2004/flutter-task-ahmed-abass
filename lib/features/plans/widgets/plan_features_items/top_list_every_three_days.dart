import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class TopListEveryThreeDays extends StatelessWidget {
  const TopListEveryThreeDays({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      width: 217.w,
      child: Row(
        children: [
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: Icon(Icons.rocket, size: 20.r),
          ),
          SizedBox(width: 8.w),
          SizedBox(
            width: 185.w,
            child: Text(
              'رفع لأعلى القائمة كل 3 أيام',
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.styleW500Size14black,
            ),
          ),
        ],
      ),
    );
  }
}
