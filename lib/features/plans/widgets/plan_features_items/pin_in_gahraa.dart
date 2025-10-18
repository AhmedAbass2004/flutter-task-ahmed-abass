import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class PinInGahraa extends StatelessWidget {
  const PinInGahraa({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.h,
      child: Row(
        children: [
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: Icon(Icons.push_pin, size: 20.r),
          ),
          SizedBox(width: 9.w),
          Text(
            'تثبيت فى مقاول صحى فى\n الجهراء',
            maxLines: 2,
            style: AppTextStyles.styleW500Size14black,
          ),
        ],
      ),
    );
  }
}
