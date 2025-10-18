import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/features/plans/widgets/plan_container.dart';
import 'package:it_legend_task/features/plans/widgets/plan_features_items/expiration_period.dart';
import 'package:it_legend_task/features/plans/widgets/plan_title.dart';

class MainPlanBox extends StatefulWidget {
  const MainPlanBox({super.key});

  @override
  State<MainPlanBox> createState() => _MainPlanBoxState();
}

class _MainPlanBoxState extends State<MainPlanBox> {
  @override
  Widget build(BuildContext context) {
    return PlanContainer(
      height: 104.h,
      title: PlanTitle(title: 'أساسية'),
      content: ExpirationPeriod(),
    );
  }
}
