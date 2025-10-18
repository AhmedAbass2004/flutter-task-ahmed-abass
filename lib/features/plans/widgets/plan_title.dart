import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';
import 'package:it_legend_task/features/plans/controllers/cubit/plans_cubit.dart';

class PlanTitle extends StatelessWidget {
  const PlanTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlansCubit, PlansState>(
      builder: (context, state) {
        final cubit = context.read<PlansCubit>();
        final isSelected = cubit.isSelected(title);

        return Row(
          children: [
            Checkbox(
              value: isSelected,
              onChanged: (value) {
                cubit.togglePlanState(title);
              },
              activeColor: AppColors.blue3B4CF2,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            Text(
              title,
              style: isSelected
                  ? AppTextStyles.styleW700Size16Blue3B4CF2
                  : AppTextStyles.styleW700Size16black,
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '3,000',
                    style: AppTextStyles.styleW700Size16orange95B1CUnderLined,
                  ),
                  TextSpan(
                    text: 'ج',
                    style: AppTextStyles.styleW700Size16orange95B1C,
                  ),
                  TextSpan(
                    text: '.م',
                    style: AppTextStyles.styleW700Size16orange95B1CUnderLined,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
