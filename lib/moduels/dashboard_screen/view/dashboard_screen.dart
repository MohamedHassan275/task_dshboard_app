
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/view/widget/category_home_widget.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/view/widget/slider_widget.dart';
import '../../../app/app_manger/color_manger.dart';
import '../../../app/widget/custom_button.dart';
import '../../../app/widget/custom_status_bar_color_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  bool? isCategorySelected;
  bool? isServiceSelected;
  bool? isOrderSelected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     isCategorySelected = true;
     isServiceSelected = false;
     isOrderSelected = false;

  }


  @override
  Widget build(BuildContext context) {
    return CustomStatusBarColorWidget(
      statusBarColor: AppColors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      widget: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 1,
          title: Text('Home',style: TextStyle(color: AppColors.colorBlack,fontSize: 20.sp),),
          centerTitle: true,
          leading: Icon(Icons.menu,color: AppColors.colorBlack,),
        ),
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // SvgPicture.asset(
                    //   'assets/images/svg_image/home.svg',
                    //   width: 25.w,height: 25.h,
                    // ),
                    Image.asset(
                      'assets/images/png_image/person_home_image2.png',
                      width: 25.w,height: 25.h,
                    ),
                    SizedBox(width: 5.w,),
                    Text('Hey, Ahmed',
                        style: TextStyle(color: AppColors.colorBlack,fontSize: 16.sp)),
                    SizedBox(width: 2.w,),
                    Image.asset(
                      'assets/images/png_image/icon_home.png',
                      width: 25.w,height: 25.h,
                    ),

                  ],
                ),
                SizedBox(height: 10.h),
                Text('Multi-Services for Your Real Estate Needs',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.colorBlack,fontSize: 18.sp)),
                SizedBox(height: 2.h),
                Text('Explore diverse real estate services for all your needs: '
                    'property management, construction, insurance and more in one place.',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: AppColors.colorGreyHome,fontSize: 14.sp)),
                SizedBox(height: 10.h),
                // slier widget
                const CustomSliderWidget(),
                SizedBox(height: 25.h,),
                Container(
                  width: double.infinity,
                  height: 48.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.colorGreyButton,width: 1.w),
                    borderRadius: BorderRadius.circular(12.w)
                  ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onTap: () {
                          isCategorySelected = true;
                          isServiceSelected = false;
                          isOrderSelected = false;
                          setState(() {});
                        },
                        title: 'Categories',
                        fontSize: 14.sp,
                        color: isCategorySelected == true ? AppColors.colorRed : AppColors.colorGreyButton,
                        fontColor: isCategorySelected == true ? AppColors.white : AppColors.colorBlack,
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        onTap: () {
                          isServiceSelected = true;
                          isCategorySelected = false;
                          isOrderSelected = false;
                          setState(() {});
                        },
                        title: 'Services',
                        fontSize: 14.sp,
                        color: isServiceSelected == true ? AppColors.colorRed : AppColors.colorGreyButton,
                        fontColor: isServiceSelected == true ? AppColors.white : AppColors.colorBlack,
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        onTap: () {
                          isOrderSelected = true;
                          isServiceSelected = false;
                          isCategorySelected = false;
                          setState(() {});
                        },
                        title: 'Orders (0)',
                        fontSize: 14.sp,
                        color: isOrderSelected == true ? AppColors.colorRed : AppColors.colorGreyButton,
                        fontColor: isOrderSelected == true ? AppColors.white : AppColors.colorBlack,
                      ),
                    )
                  ],
                ),),
                SizedBox(height: 25.h,),
                const Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CategoryHomeWidget()
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
