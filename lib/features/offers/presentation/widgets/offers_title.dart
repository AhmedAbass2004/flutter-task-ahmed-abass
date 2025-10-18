import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/helpers/extensions/navigation_extension.dart';
import 'package:it_legend_task/core/routing/routes.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';

class OffersTitle extends StatelessWidget {
  const OffersTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h, right: 16.w, left: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  context.pushNamed(Routes.filtersScreen);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.grey8000,
                  size: 24.r,
                ),
              ),
              SizedBox(width: 5.w),
              Text('الكل', style: AppTextStyles.styleW700Size16grey8000),
            ],
          ),

          Text(
            'أستكشف العروض',
            style: AppTextStyles.styleW500Size16Black090F1F,
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
