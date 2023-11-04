import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_manger/color_manger.dart';


class CustomButton extends StatelessWidget {
    CustomButton({Key? key, required this.title, required this.onTap, required this.fontSize,
    required this.color, required this.fontColor}) : super(key: key);

  final String title;
  final void Function()? onTap;
  final Color? fontColor;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.024;
    return InkWell(
      onTap: onTap,
      child: Card(
          color: color,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
          child: SizedBox(
            width:  95.w,
            height: 30.h,
            child: Center(
              child: Text( title,
                style: TextStyle(color: fontColor, fontSize: fontSize ?? 17.5, fontWeight: FontWeight.normal, fontFamily: 'Cairo'),
              )
            ),
          )),
    );
  }
}
