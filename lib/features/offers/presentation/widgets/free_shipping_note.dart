import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class FreeShippingNote extends StatelessWidget {
  const FreeShippingNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 328.w,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.orange0DF95B1C,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'لأى عرض تطلبه دلوقتى !',
              style: AppTextStyles.styleW400Size10black,
            ),
          ),
          Spacer(),
          Text('شحن مجانى', style: AppTextStyles.styleW400Size12green3A813F),
          SizedBox(width: 4.w),
          Icon(Icons.check, color: AppColors.green3A813F),
        ],
      ),
    );
  }
}
