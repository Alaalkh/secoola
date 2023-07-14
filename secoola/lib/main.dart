import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Widgets/ChooseTopic.dart';
import 'package:secoola/Widgets/Login_page.dart';
import 'package:secoola/Widgets/NewPassword.dart';
import 'package:secoola/Widgets/OnBoarding.dart';
import 'package:secoola/Widgets/Reset_password.dart';
import 'package:secoola/Widgets/Signin_page.dart';
import 'package:secoola/Widgets/SplashScreen.dart';
import 'package:secoola/Widgets/Verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            initialRoute: 'SplachScreen',
            routes: {
              'SplachScreen': (context) => SplachScreen(),
              'ChooseTopic': (context) => ChooseTopic(),
              'SignPage': (context) => SignPage(),
              'LoginPage': (context) => LoginPage(),
              'ResetPassword': (context) => ResetPassword(),
              'VerificationPage': (context) => VerficicationPage(),
              'NewPassword': (context) => NewPassword(),
              'OnBoarding': (context) => OnBoarding(),
            },
            debugShowCheckedModeBanner: false,
            title: 'Secoola',
            home: SplachScreen(),
            theme: ThemeData(
              useMaterial3: true,
            ),
          );
        });
  }
}
