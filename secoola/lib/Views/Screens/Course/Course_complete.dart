import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/appRoutes.dart';

class Coursecomplete extends StatelessWidget {
  const Coursecomplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 190.h),
              child: Image.asset(
                "assets/checked.png",
                scale: 0.66,
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 55.w),
                  child: const Text(
                    "Course completed",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                const Text(
                  "🎉",
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            Container(
              alignment: Alignment.centerRight,
              height: 22.h,
              width: 301.w,
              child: const Text(
                "Congratulation! Your transaction is successful",
                style: TextStyle(fontSize: 14, color: Color(0xfff899197)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "you can start your course now.",
                style: TextStyle(fontSize: 14, color: Color(0xfff899197)),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            GestureDetector(
              onTap: () {
              },
              child: Container(
                alignment: Alignment.center,
                width: 335.w,
                height: 52.h,
                decoration: BoxDecoration(
                    color: const Color(0xfff00A9B7),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Text(
                  "Share your experience",
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 44.h,
            ),
            GestureDetector(
              onTap: () {
                 Get.toNamed(Routes.NavigationPage);
              },
              child: Container(
                child: Text(
                  "Back to My Course",
                  style: TextStyle(
                      fontSize: 16.sp, color: const Color(0xfff00A9B7)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
