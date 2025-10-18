import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/helpers/extensions/navigation_extension.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class FiltersScreenTitle extends StatelessWidget {
  const FiltersScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      width: double.infinity,
      padding: EdgeInsets.only(right: 12.w, left: 16.w),
      child: Row(
        children: [
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Icon(Icons.close, size: 16.r),
            ),
          ),
          SizedBox(width: 12.w),
          Text('فلترة', style: AppTextStyles.styleW500Size24black),
          Spacer(),
          Text('رجوع للأفتراضى', style: AppTextStyles.styleW700Size16Blue79FE),
        ],
      ),
    );
  }
}
