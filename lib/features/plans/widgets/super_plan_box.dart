import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/features/plans/widgets/plan_container.dart';
import 'package:it_legend_task/features/plans/widgets/plan_features_items/appearance_in_all_governorates.dart';
import 'package:it_legend_task/features/plans/widgets/plan_features_items/expiration_period.dart';
import 'package:it_legend_task/features/plans/widgets/plan_features_items/number_of_views_section.dart';
import 'package:it_legend_task/features/plans/widgets/plan_features_items/pin_in_contractor.dart';
import 'package:it_legend_task/features/plans/widgets/plan_features_items/pin_in_gahraa.dart';
import 'package:it_legend_task/features/plans/widgets/plan_features_items/special_ad.dart';
import 'package:it_legend_task/features/plans/widgets/plan_features_items/top_list_every_three_days.dart';
import 'package:it_legend_task/features/plans/widgets/plan_title.dart';

class SuperPlanBox extends StatelessWidget {
  const SuperPlanBox({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanContainer(
      height: 326.h,
      title: PlanTitle(title: 'سوبر'),
      content: Row(
        children: [
          SizedBox(
            width: 217.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpirationPeriod(),
                SizedBox(height: 8.h),
                TopListEveryThreeDays(),
                SizedBox(height: 8.h),
                PinInContractor(),
                SizedBox(height: 8.h),
                AppearanceInAllGovernorates(),
                SizedBox(height: 8.h),
                SpecialAd(),
                SizedBox(height: 8.h),
                PinInGahraa(),
                SizedBox(height: 8.h),
                PinInContractor(),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          NumberOfViewsSection(viewsCount: 24),
        ],
      ),
    );
  }
}
