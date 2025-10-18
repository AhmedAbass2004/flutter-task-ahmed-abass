import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/helpers/dependency_injection/dependency_container.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';
import 'package:it_legend_task/features/offers/data/reposatories/sub_category_roposatory.dart';
import 'package:it_legend_task/features/offers/logic/sub_category_controller/sub_category_cubit.dart';

class SubCategoriesList extends StatelessWidget {
  const SubCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubCategoryCubit(sl<SubCategoryRepository>()),
      child: Container(
        height: 78.h,
        padding: EdgeInsets.only(right: 16),
        child: BlocBuilder<SubCategoryCubit, SubCategoryState>(
          builder: (context, state) {
            switch (state) {
              case SubCategoryLoading():
                return Center(child: CircularProgressIndicator());

              case SubCategoryLoaded():
                final subCategories = state.subCategories;
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemCount: subCategories.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 73.w,
                            height: 56.h,
                            decoration: BoxDecoration(
                              color: AppColors.grey1A000,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Image.asset(subCategories[i].imagePath),
                          ),
                          SizedBox(height: 8.h),
                          SizedBox(
                            height: 14.h,
                            child: Text(
                              subCategories[i].name,
                              style: AppTextStyles.styleW700Size12black,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );

              case SubCategoryError():
                return Text(state.message);
            }
          },
        ),
      ),
    );
  }
}
