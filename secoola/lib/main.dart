import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:secoola/Views/Screens/Splashscreen/SplashScreen.dart';
import 'package:secoola/theme/Color.dart';


import 'appRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(

            initialRoute: Routes.Splashscreen,
            getPages: getPages,
            debugShowCheckedModeBanner: false,
            title: 'Secoola',
            home:  const SplachScreen(),
            theme: ThemeData(
              scaffoldBackgroundColor: white,
              useMaterial3: true,
            ),
          );
        });
  }
}
