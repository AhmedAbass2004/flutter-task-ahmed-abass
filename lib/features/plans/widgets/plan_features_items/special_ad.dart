import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class SpecialAd extends StatelessWidget {
  const SpecialAd({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: Row(
        children: [
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: Icon(Icons.workspace_premium_outlined, size: 20.r),
          ),
          SizedBox(width: 9.w),
          Text('أعلان مميز', style: AppTextStyles.styleW400Size14Black),
        ],
      ),
    );
  }
}
