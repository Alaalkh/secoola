import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Models/TopicContent.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

import 'TitleWidget.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [titleWidget()],
        ),
      ),
    );
  }
}




