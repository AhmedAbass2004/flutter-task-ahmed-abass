import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_legend_task/core/helpers/utils/data_formatter.dart';
import 'package:it_legend_task/core/theming/app_colors.dart';
import 'package:it_legend_task/core/theming/app_text_styles.dart';
import 'package:it_legend_task/features/offers/data/models/product.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360.h,
      width: 158.w,
      decoration: BoxDecoration(
        border: Border.all(width: 1.w, color: AppColors.grey1A000),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        children: [
          Container(
            height: 215.h,
            width: double.infinity,
            color: AppColors.grey0D000,
            child: Image.asset(product.imageUrl, fit: BoxFit.contain),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/offer_logo.svg',
                      width: 20.w,
                      height: 20.h,
                    ),
                    Expanded(
                      child: Text(
                        product.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                        style: AppTextStyles.styleW500Size14black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: Icon(Icons.favorite_border),
                    ),
                    Expanded(
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                        text: TextSpan(
                          style: AppTextStyles.styleW500Size14red4144,
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  '${DataFormatter.formatPrice(product.offerPrice ?? 0)}/',
                              style: AppTextStyles.styleW500Size14red4144,
                            ),
                            TextSpan(
                              text: DataFormatter.formatPrice(product.price),
                              style: AppTextStyles
                                  .styleW400Size12grey8000LineThrough,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 12.h,
                        width: 12.w,
                        child: Icon(
                          Icons.local_fire_department_outlined,
                          size: 12.r,
                          color: AppColors.grey80090F1F,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'تم بيع ${DataFormatter.formatSellsCount(product.sellCount)}',
                        style: AppTextStyles.styleW400Size10grey80090F1F,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 31.h),
                Row(
                  children: [
                    SizedBox(
                      width: 15.w,
                      height: 22.h,
                      child: Image.asset(
                        'assets/images/talaat_mustafa_logo.png',
                      ),
                    ),
                    SizedBox(width: 12.w),
                    SizedBox(
                      height: 24.h,
                      width: 32.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          elevation: 0,
                          side: BorderSide(
                            color: AppColors.grey1A000,
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: () {},
                        child: Icon(Icons.add_shopping_cart, size: 13.r),
                      ),
                    ),
                    SizedBox(width: 49.w),
                    Stack(
                      children: [
                        Container(
                          width: 26.w,
                          height: 26.h,
                          margin: EdgeInsets.only(right: 6.w),
                          decoration: BoxDecoration(
                            color: Color(0x1A0062E2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.corporate_fare_rounded,
                            color: Color(0xFF0062E2),
                            size: 14.r,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            width: 12.w,
                            height: 12.h,
                            decoration: BoxDecoration(
                              color: Color(0xFF0062E2),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 7.5.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
