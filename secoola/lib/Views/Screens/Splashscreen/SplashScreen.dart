import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/appRoutes.dart';


class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2), () =>
        Get.toNamed(Routes.Onboarding));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset("assets/logo.png"),
            ),
          ),
        ],
      ),
    );
  }
}
