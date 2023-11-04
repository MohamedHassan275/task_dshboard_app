import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/view/dashboard_screen.dart';

import '../../../app/app_manger/color_manger.dart';

part 'home_main_state.dart';

class HomeMainCubit extends Cubit<HomeMainState> {
  HomeMainCubit() : super(HomeMainInitial());

  static HomeMainCubit get (BuildContext context) => BlocProvider.of(context);

  int selectedindex = 0;
  List<Widget> widgetpages = [
    const DashboardScreen(),
    const DashboardScreen(),
    const DashboardScreen(),
    const DashboardScreen(),
  ];

  changeIndex(index) {
    selectedindex = index;
    emit(ChangeBottomNavIndex());
  }

  List<BottomNavigationBarItem> navigationItem = [
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/images/svg_image/home.svg',
          color: AppColors.colorSliderUnActive,
          width: 25.w,height: 25.h,),
        activeIcon:SvgPicture.asset('assets/images/svg_image/home.svg',
          color: AppColors.colorRed,
          width: 25.w,height: 25.h,),
        label: 'Home'
    ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/images/svg_image/dashboard_customize.svg',
           color: AppColors.colorSliderUnActive,
          width: 25.w,height: 25.h,),
        activeIcon: SvgPicture.asset('assets/images/svg_image/dashboard_customize.svg',
          color: AppColors.colorRed,
          width: 25.w,height: 25.h,),
        label: 'Assets'
    ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/images/svg_image/support_agent.svg',
          color: AppColors.colorSliderUnActive,),
        activeIcon:SvgPicture.asset('assets/images/svg_image/support_agent.svg',
          color: AppColors.colorRed,),
        label: 'Support'
    ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/images/svg_image/person.svg',
          color: AppColors.colorSliderUnActive,
          width: 25.w,height: 25.h,),
        activeIcon: SvgPicture.asset('assets/images/svg_image/person.svg',
          color: AppColors.colorRed,
          width: 25.w,height: 25.h,),
        label: 'Profile'
    ),
  ];

}
