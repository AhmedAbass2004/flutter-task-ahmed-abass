import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/helpers/dependency_injection/dependency_container.dart';
import 'package:it_legend_task/features/offers/logic/category_controller/category_cubit.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/category_item.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int _selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CategoryCubit>(),
      child: Container(
        padding: EdgeInsets.only(right: 16.w),
        height: 41.h,
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            switch (state) {
              case CategoryLoading():
                return Center(child: CircularProgressIndicator());

              case CategoryLoaded():
                final categories = state.categories;
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            _selectedCategory = i;
                          });
                        },
                        child: CategoryItem(
                          name: categories[i].name,
                          isSelected: _selectedCategory == i,
                        ),
                      );
                    },
                  ),
                );

              case CategoryError():
                log(state.message);
                return Text(state.message);
            }
          },
        ),
      ),
    );
  }
}
