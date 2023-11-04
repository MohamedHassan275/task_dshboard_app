import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'app/network/dio_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();

  runApp(MyApp());
}

