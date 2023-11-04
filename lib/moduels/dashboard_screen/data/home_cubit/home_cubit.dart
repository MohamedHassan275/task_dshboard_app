import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_dshboard_app/app/widget/custom_toast.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/data/repo/home_web_services.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/model/user_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());


  static HomeCubit get (BuildContext context) => BlocProvider.of(context);

  List<UserModel>? userModel;


  userContentService(){
    print('ssssssssssssssssssssssss ');
    emit(UserContentLoadingState());
    Connectivity().checkConnectivity().then((connectivityResult) {
      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        HomeService.userContentService().then((value){
          userModel = value;
          print('sssssssssssssssssssssssssssssss ${userModel?.length}');
          print('sssssssssssssssssssssssssssssss ${userModel?[0].name}');
          emit(UserContentSuccessfullyState());
        }).catchError((onError){
          emit(UserContentErrorState());
        });
      } else {
        print('Oops! Please check your internet connection ');
       customFlutterToast('Oops! Please check your internet connection');
      }
    });
  }

}
