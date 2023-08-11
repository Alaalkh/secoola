import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Views/Screens/Course/Continuecourse.dart';
import 'package:secoola/theme/Color.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: [AppbarWidget(), CourseReview()],
        ),
      ),
    );
  }
}

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 360.h,
              width: 375.w,
              decoration: const BoxDecoration(color: Color(0xfffffea7d)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          margin: EdgeInsets.only(left: 33.w, top: 55.h),
                          decoration: BoxDecoration(
                              color: const Color(0xfff6bc2a3),
                              borderRadius: BorderRadius.circular(12.r)),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Color(0xfffffffff),
                          ),
                        ),
                        onTap: () {
                          Get.back();
                        },
                      ),
                      Container(
                        height: 40.h,
                        width: 40.w,
                        margin: EdgeInsets.only(left: 222.w, top: 55.h),
                        decoration: BoxDecoration(
                            color: const Color(0xfffccbb64),
                            borderRadius: BorderRadius.circular(12.r)),
                        child: const Icon(
                          Icons.shopping_cart,
                          color: white2,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}




