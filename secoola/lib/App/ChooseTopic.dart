import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Models/TopicContent.dart';
import 'package:secoola/Models/appRoutes.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffffafafa),
      body: SingleChildScrollView(
        child: Column(
          children: [titleWidget()],
        ),
      ),
    );
  }
}

class titleWidget extends StatelessWidget {
  const titleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin:  EdgeInsets.only(left: 100.w, top: 88.h),
              child:  Text(
                "Pick your favorite topic",
                style: TextStyle(fontSize: 24.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin:  EdgeInsets.only(left: 44.w, top: 11.h),
              width: 294.w,
              height: 41.h,
              child:  Text(
                "Choose your favorite topic to help us deliver the most suitable course for you.",
                style: TextStyle(fontSize: 14.sp, color: Color(0xfffa9aeb2)),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        const TopicSelection(),
         SizedBox(
          height: 66.h,
        ),
        const ButtomWidget()
      ],
    );
  }
}

class TopicSelection extends StatelessWidget {
  const TopicSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 33.0,
          mainAxisSpacing: 44.0,
          mainAxisExtent: 100,
        ),
        itemCount: topicContent.length,
        itemBuilder: (_, i) {
          return Column(
            children: [
              Container(
                margin:  EdgeInsets.only(left: 22.w, right: 16.w),
                height: 80.h,
                width: 101.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    22.r,
                  ),
                  color: const Color(0xfffffffff),
                ),
                child: Image.asset(topicContent[i].image),
              ),
              Container(
                margin:  EdgeInsets.only(left: 11.w),
                child: Text(topicContent[i].title),
              )
            ],
          );
        });
  }
}

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:  EdgeInsets.only(right: 22.w),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
          width: 355.w,
          height: 56.h,
          child: Padding(
            padding:  EdgeInsets.only(left: 25.w),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.NavigationPage);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Color(0xfff00a9b7); //<-- SEE HERE
                    }
                    return const Color(
                        0xfffcacaca); // Defer to the widget's default.
                  },
                ),
              ),
              child: const Text(
                "Start your Journey",
                style: TextStyle(color: Color(0xfffffffff), fontSize: 16),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
         Text(
          "You can still change your topic again later",
          style: TextStyle(fontSize: 14.sp, color: Color(0xfffcacaca)),
        )
      ],
    );
  }
}
