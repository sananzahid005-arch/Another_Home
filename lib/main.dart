import 'package:flutter/material.dart';
import 'package:flutter_basic/Ui/another_home/auth_flow/splash_scrren.dart';
import 'package:flutter_basic/Ui/another_home/home_flow/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.sizeOf(context).width,
        MediaQuery.sizeOf(context).height,
      ),
      builder: (context, child) {
        return GetMaterialApp(
          useInheritedMediaQuery: true,

          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}
