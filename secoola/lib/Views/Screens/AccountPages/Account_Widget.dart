import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Views/Widgets/AccountWidget.dart';
import 'package:secoola/appRoutes.dart';

class Accountwidget extends StatelessWidget {
  const Accountwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 22.h,right: 260.h),
            child: const Text("Account",)),
        Container(
          margin: EdgeInsets.only(top: 22.h),
          width: 335.w,
          height: 152.h,
          decoration: BoxDecoration(
              color: const Color(0xfffFFFFFF),
              borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.NotificationPage);
                },
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.notifications,
                  ),
                  title: 'Notification',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.security,
                  ),
                  title: 'Security',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.email,
                  ),
                  title: 'Email   ',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
