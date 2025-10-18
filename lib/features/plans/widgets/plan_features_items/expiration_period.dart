import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class ExpirationPeriod extends StatelessWidget {
  const ExpirationPeriod({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      child: Row(
        children: [
          SvgPicture.asset('assets/svgs/acute.svg', height: 16.h, width: 22.w),
          SizedBox(width: 9.w),
          Text(
            'صلاحية الأعلان 30 يوم',
            style: AppTextStyles.styleW500Size14black,
          ),
        ],
      ),
    );
  }
}
