import 'package:flutter/material.dart';
import 'package:secoola/Widgets/Login_page.dart';
import 'package:secoola/Widgets/Reset_password.dart';
import 'package:secoola/Widgets/Signin_page.dart';
import 'package:secoola/Widgets/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'SplachScreen',
      routes: {
        'SplachScreen': (context) => SplachScreen(),
        'SignPage': (context) => SignPage(),
        'LoginPage': (context) => LoginPage(),
        'ResetPassword': (context) => ResetPassword(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Secoola',
      home: SplachScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
