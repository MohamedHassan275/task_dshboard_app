
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/app_manger/color_manger.dart';

class ServiceHomeWidget extends StatefulWidget {
  const ServiceHomeWidget({Key? key}) : super(key: key);

  @override
  State<ServiceHomeWidget> createState() => _ServiceHomeWidgetState();
}

class _ServiceHomeWidgetState extends State<ServiceHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text('Service Widget',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.colorBlack,fontSize: 22.sp,fontWeight: FontWeight.w700)),

          SizedBox(height: 15.h),
        ],
      ),
    );
  }



}
