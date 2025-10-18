import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/helpers/extensions/navigation_extension.dart';
import 'package:it_legend_task/core/routing/routes.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/bottom_navigation_bar/unselected_item.dart';

class HomePageBottomNavigationBar extends StatelessWidget {
  const HomePageBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 11.5.w, vertical: 8.h),
      margin: EdgeInsets.only(bottom: 0.h),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.grey1A000,
            width: 1.h,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Row(
        children: [
          UnselectedItem(icon: Icons.account_circle_outlined, label: 'حسابى'),
          SizedBox(width: 8.w),
          UnselectedItem(icon: Icons.dataset, label: 'أعلاناتى'),
          SizedBox(width: 8.w),
          Container(
            width: 61.w,
            height: 46.h,
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: GestureDetector(
              onTap: () {
                context.pushNamed(Routes.plansScreen);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add_box_outlined, color: AppColors.blue62E2),
                  SizedBox(
                    height: 14.h,
                    width: 61.w,
                    child: SizedBox(
                      width: 65.w,
                      child: Text(
                        'أضف أعلان',
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.styleW500Size12blue62E2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.w),
          UnselectedItem(icon: Icons.chat, label: 'محادثة'),
          SizedBox(width: 8.w),
          Container(
            width: 61.w,
            height: 46.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              border: const Border(
                bottom: BorderSide(color: Colors.black, width: 2),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: Icon(
                    Icons.bungalow_outlined,
                    color: Colors.black,
                    size: 22.r,
                  ),
                ),
                Text('الرئيسية', style: AppTextStyles.styleW500Size12black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
