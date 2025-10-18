import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/ads_grid_view.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/categories_list.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/free_shipping_note.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/bottom_navigation_bar/home_page_bottom_navigation_bar.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/offers_title.dart';
import 'package:it_legend_task/features/offers/presentation/widgets/sub_categories_list.dart';

class OffersScreens extends StatefulWidget {
  const OffersScreens({super.key});

  @override
  State<OffersScreens> createState() => _OffersScreensState();
}

class _OffersScreensState extends State<OffersScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const OffersTitle(),
              SizedBox(height: 12.h),
              const CategoriesList(),
              SizedBox(height: 33.h),
              const SubCategoriesList(),
              SizedBox(height: 33.h),
              const FreeShippingNote(),
              SizedBox(height: 20.h),
              const AdsGridView(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomePageBottomNavigationBar(),
    );
  }
}
