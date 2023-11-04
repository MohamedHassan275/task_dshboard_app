import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/view/dashboard_screen.dart';
import 'package:task_dshboard_app/moduels/home_main_screen/cubit/home_main_cubit.dart';

import '../moduels/home_main_screen/view/home_main_screen.dart';

class MyApp extends StatefulWidget {


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeMainCubit()),
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 730),
          useInheritedMediaQuery: true,
          builder: (BuildContext context, Widget? child) =>
              const MaterialApp(
                debugShowCheckedModeBanner: false,
                home: HomeMainScreen(),
              ),
        ),
      );
  }
}
