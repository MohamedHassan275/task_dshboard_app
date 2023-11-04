import 'dart:io';

import 'package:dio/dio.dart';
import 'package:task_dshboard_app/moduels/dashboard_screen/model/user_model.dart';

import '../../../../app/network/dio_helper.dart';


class HomeService {



  static Future<List<UserModel>?> userContentService() async {

    List<UserModel>? userModel;
    print('ssssssssssssssssssssssss servive');
    try {
      Response response = await DioHelper.getData(uri: 'https://jsonplaceholder.typicode.com/users');

      print('response data ${response.statusCode}');
      if(response.statusCode == 200){
        print('response data');
        print(response.data);
        final List body = response.data;
        userModel = body.map((e) => UserModel.fromJson(e)).toList();
        return userModel;
      }else if (response.statusCode == 400){
        print('ssssssssssssssssssssssss servive');
        // CustomFlutterToast(response.data["success"].toString());
        // customFlutterToast(response.data["message"]);
        //customFlutterToast(response.data["errors"]);
        //  CustomFlutterToast(response.statusCode.toString());
      }else {
        print('ssssssssssssssssssssssss servive');
      }


    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return userModel;
  }

}
