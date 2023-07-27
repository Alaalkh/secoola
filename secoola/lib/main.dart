import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:secoola/View/Search/Search_default.dart';
import 'package:secoola/View/SplashScreen.dart';
import 'package:secoola/View/SplashScreen.dart';


import 'View/SplashScreen.dart';
import 'View/SplashScreen.dart';
import 'Models/appRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            initialRoute: Routes.Splashscreen,
            getPages: getPages,
            debugShowCheckedModeBanner: false,
            title: 'Secoola',
            home: const SplachScreen(),
            theme: ThemeData(
              useMaterial3: true,
            ),
          );
        });
  }
}
