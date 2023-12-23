// ignore_for_file: unused_import, avoid_web_libraries_in_flutter, must_be_immutable

//import 'dart:js';

//import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resturant/screens/bottom_nav_bar.dart';
import 'package:resturant/screens/about_us.dart';
import 'package:resturant/screens/detail.dart';
import 'package:resturant/screens/menu_screen.dart';
import 'package:resturant/screens/splashscreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var height = MediaQuery.of(context).size.height;
  //var width = MediaQuery.of(context).size.width;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 390),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          home: splashscreen(),
        );
      },
    );
  }
}
