import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/core/helpers/dependency_injection/dependency_container.dart';
import 'package:it_legend_task/features/offers/logic/product_controller/product_cubit.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/product_grid_item.dart';

class AdsGridView extends StatelessWidget {
  const AdsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductCubit>(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          switch (state) {
            case ProductLoading():
              return const Center(child: CircularProgressIndicator());

            case ProductLoaded():
              final products = state.products;
              return GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.h,
                  crossAxisSpacing: 12.w,
                  mainAxisExtent: 360.h,
                ),
                itemCount: products.length,
                itemBuilder: (context, i) {
                  return ProductGridItem(product: products[i]);
                },
              );
            case ProductError():
              return Text(state.message);
          }
        },
      ),
    );
  }
}
