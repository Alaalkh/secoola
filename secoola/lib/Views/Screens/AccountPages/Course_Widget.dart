import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Views/Widgets/AccountWidget.dart';
import 'package:secoola/appRoutes.dart';

class Coursewidget extends StatelessWidget {
  const Coursewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 22.h,right: 260.h),
            child: const Text("Course",)),
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
                onTap: () {},
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.school_sharp,
                  ),
                  title: 'Certificate',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.Paymentpage);
                },
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.payment,
                  ),
                  title: 'Payment',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.history,
                  ),
                  title: 'History',
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
