
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_dshboard_app/moduels/home_main_screen/cubit/home_main_cubit.dart';

import '../../app/app_manger/color_manger.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {


  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<HomeMainCubit, HomeMainState>(
      builder: (context, state) {
        HomeMainCubit homeMainCubit = HomeMainCubit.get(context);
        return Scaffold(
            body: SafeArea(
              child: Expanded(child: homeMainCubit.widgetpages[homeMainCubit.selectedindex]),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.colorRed,
              unselectedFontSize: 2,
              unselectedItemColor: AppColors.colorSliderUnActive,
              elevation: 15,
              currentIndex: homeMainCubit.selectedindex,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              backgroundColor: AppColors.white,
              unselectedLabelStyle:   TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.sp,
                  color: AppColors.colorSliderUnActive),
              selectedLabelStyle:   TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.sp,
                  color: AppColors.colorRed),
              onTap: (index) {
                print('bottomNavCubit.selectedindex');
                print(homeMainCubit.selectedindex);
                setState(() {
                  homeMainCubit.selectedindex = index;
                });
              },
              items: homeMainCubit.navigationItem,
            ));
      },
    );
  }
}
