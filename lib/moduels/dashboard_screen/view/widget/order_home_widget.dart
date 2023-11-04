
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/app_manger/color_manger.dart';

class OrderHomeWidget extends StatefulWidget {
  const OrderHomeWidget({Key? key}) : super(key: key);

  @override
  State<OrderHomeWidget> createState() => _OrderHomeWidgetState();
}

class _OrderHomeWidgetState extends State<OrderHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/png_image/empty_state_image.png',
            width: 250.w,height: 200.h,
          ),
          SizedBox(height: 10.h,),
          Text('No orders found',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.colorBlack,fontSize: 22.sp,fontWeight: FontWeight.w700)),
          SizedBox(height: 2.h),
          Text('you can place your needed orders to let serve you.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.colorGreyHome,fontSize: 15.sp,fontWeight: FontWeight.w400)),
          SizedBox(height: 15.h),
        ],
      ),
    );
  }



}
