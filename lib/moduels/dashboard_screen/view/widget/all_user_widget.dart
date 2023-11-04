
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/data/home_cubit/home_cubit.dart';

import '../../../../app/app_manger/color_manger.dart';
import '../../model/user_model.dart';

class AllUserContentWidget extends StatefulWidget {
  AllUserContentWidget({Key? key,required this.userList}) : super(key: key);
  UserModel userList;


  @override
  State<AllUserContentWidget> createState() => _AllUserContentWidgetState();
}

class _AllUserContentWidgetState extends State<AllUserContentWidget> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return Card(
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
                    'assets/images/svg_image/category_constructions_image.svg',
                    width: 32.w,height: 32.h,
                  ),
                  SizedBox(width: 5.w,),
                  Text('${widget.userList.name}',
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



}
