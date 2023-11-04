
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/app_manger/color_manger.dart';

class CategoryHomeWidget extends StatefulWidget {
  const CategoryHomeWidget({Key? key}) : super(key: key);

  @override
  State<CategoryHomeWidget> createState() => _CategoryHomeWidgetState();
}

class _CategoryHomeWidgetState extends State<CategoryHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Categories View',
                  style: TextStyle(color: AppColors.colorBlack,fontSize: 14.sp)),
              Text('see all',
                  style: TextStyle(color: AppColors.colorGreyHome2,fontSize: 12.sp,
                    decoration: TextDecoration.underline,
                  )),
            ],
          ),
          SizedBox(height: 10.h,),
          /// widget category item widget
          categoryItemWidget('assets/images/svg_image/category_constructions_image.svg','Constructions'),
          SizedBox(height: 25.h,),
          categoryItemWidget('assets/images/svg_image/category_insurances_image.svg','Insurances'),
          SizedBox(height: 25.h,),
          categoryItemWidget('assets/images/svg_image/category_legal_image.svg','Legal'),
          SizedBox(height: 25.h,),
          categoryItemWidget('assets/images/svg_image/category_buy_image.svg','Buy & Sell'),
          SizedBox(height: 25.h,),
          categoryItemWidget('assets/images/svg_image/category_account_image.svg','Accounting Services'),
          SizedBox(height: 15.h,),

        ],
      ),
    );
  }

  Widget categoryItemWidget(categoryImage,title,) =>
      Card(
        elevation: 0.2,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.white
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      categoryImage,
                      width: 32.w,height: 32.h,
                    ),
                    SizedBox(width: 5.w,),
                    Text(title,
                        style: TextStyle(color: AppColors.colorBlack,fontSize: 16.sp)),
                  ],
                ),
                SvgPicture.asset(
                  'assets/images/svg_image/arrow_category_icon.svg',
                  width: 25.w,height: 25.h,
                ),

              ],
            ),
          ),
        ),
      );

}
