import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_dshboard_app/app/app_manger/color_manger.dart';



void customFlutterToast(msg){
  Fluttertoast.showToast(
    msg: msg,
    fontSize: 15,
    backgroundColor: AppColors.white,
    gravity: ToastGravity.BOTTOM,
    textColor: AppColors.white,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
  );
}

