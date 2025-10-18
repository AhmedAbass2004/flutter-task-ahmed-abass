import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_legend_task/features/plans/controllers/cubit/plans_cubit.dart';
import 'package:it_legend_task/features/plans/widgets/contact_with_support_box.dart';
import 'package:it_legend_task/features/plans/widgets/extra_plan_box.dart';
import 'package:it_legend_task/features/plans/widgets/main_plan_box.dart';
import 'package:it_legend_task/features/plans/widgets/next_button.dart';
import 'package:it_legend_task/features/plans/widgets/plans_screen_title.dart';
import 'package:it_legend_task/features/plans/widgets/plus_plan_box.dart';
import 'package:it_legend_task/features/plans/widgets/super_plan_box.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlansCubit(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    PlansScreenTitle(),
                    SizedBox(height: 20.h),
                    MainPlanBox(),
                    SizedBox(height: 24.h),
                    ExtraPlanBox(),
                    SizedBox(height: 3.h),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 21.h),
                          child: PlusPlanBox(),
                        ),
                        Positioned(
                          right: 1.w,
                          top: 0,
                          child: SvgPicture.asset(
                            'assets/svgs/plan_offer_padge.svg',
                            height: 31.h,
                            width: 135.w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 21.h),
                          child: SuperPlanBox(),
                        ),
                        Positioned(
                          right: 1.w,
                          top: 0,
                          child: SvgPicture.asset(
                            'assets/svgs/top_view_offer_padge.svg',
                            height: 31.h,
                            width: 135.w,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    ContactWithSupportBox(),
                    SizedBox(height: 200.h),
                    NextButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
