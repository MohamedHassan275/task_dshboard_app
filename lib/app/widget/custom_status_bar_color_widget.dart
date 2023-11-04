
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../app_manger/color_manger.dart';


class CustomStatusBarColorWidget extends StatelessWidget {
  const CustomStatusBarColorWidget({Key? key,required this.widget,
  this.statusBarBrightness,this.statusBarColor,this.statusBarIconBrightness}) : super(key: key);
  final Widget? widget;
  final Color? statusBarColor;
  final Brightness? statusBarBrightness;
  final Brightness? statusBarIconBrightness;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value:  SystemUiOverlayStyle(
        statusBarColor: statusBarColor ?? AppColors.white,
        statusBarBrightness: statusBarBrightness ?? Brightness.light,
        statusBarIconBrightness: statusBarIconBrightness ?? Brightness.light,
    ),
    child: widget!);
  }
}
