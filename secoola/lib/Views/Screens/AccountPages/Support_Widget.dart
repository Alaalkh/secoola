import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Views/Widgets/AccountWidget.dart';
import 'package:secoola/appRoutes.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(top: 33.h, left: 22.w),
                child: const Text("Support")),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 22.h),
          width: 335.w,
          height: 104.h,
          decoration: BoxDecoration(
              color: const Color(0xfffFFFFFF),
              borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.help,
                  ),
                  title: 'Help',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.FaqPage);
                },
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.question_answer_rounded,
                  ),
                  title: 'FAQ',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),


            ],
          ),)
      ],
    );
  }
}
