import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/theme/Color.dart';

import '../../../appRoutes.dart';
import '../../Widgets/CourseWidget.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Popular course",
              style: TextStyle(color: Colors.black, fontSize: 18.sp),
            ),
            SizedBox(
              width: 100.w,height: 33.h,
            ),
            Text(
              "See All",
              style: TextStyle(color: teal, fontSize: 14.sp),
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(    onTap: () {
                Get.toNamed(Routes.CourseDetails);

              },
                child: const CourseWidget(
                  boxcolor: yellow,
                  titletext: "Design Thingking Fundamental",
                  coursetutor: "Robert Fox",
                  price: "\$ 150",
                  colorText: teal,
                  recommend: "Best Seller",
                  background: Ligthblue,
                ),
              ),
              const CourseWidget(
                boxcolor: blue,
                titletext: "Flutter Class - Advance Program",
                coursetutor: "Wade Warren",
                price: "\$ 24",
                colorText: Colors.red,
                recommend: "Recomended",
                background: Ligthred,
              )
            ],
          ),
        )
      ],
    );
  }
}
