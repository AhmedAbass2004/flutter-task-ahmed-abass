import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79.h,
      width: double.infinity,
      padding: EdgeInsets.only(right: 16.w, left: 16.w, bottom: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('الفئة', style: AppTextStyles.styleW500Size16grey8000),
          Spacer(),
          SizedBox(
            height: 40.h,
            child: ListTile(
              leading: SizedBox(
                height: 24.h,
                width: 24.w,
                child: Icon(
                  Icons.real_estate_agent,
                  size: 24.r,
                  color: AppColors.orange95B1C,
                ),
              ),
              title: Text('عقارات', style: AppTextStyles.styleW500Size14black),
              subtitle: Text(
                'فلل البيع',
                style: AppTextStyles.styleW400Size12grey8000,
              ),
              trailing: Text('تغيير', style: AppTextStyles.styleW700Size14blue),
            ),
          ),
        ],
      ),
    );
  }
}
