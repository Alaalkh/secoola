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
              margin: EdgeInsets.only(left: 70.w, top: 88.h),
              child: Text(
                "Pick your favorite topic",
                style: TextStyle(fontSize: 24.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 44.w, top: 11.h),
              width: 294.w,
              height: 41.h,
              child: Text(
                "Choose your favorite topic to help us deliver the most suitable course for you.",
                style:
                    TextStyle(fontSize: 14.sp, color: const Color(0xfffa9aeb2)),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        const TopicSelection(),
        SizedBox(
          height: 66.h,
        ),
        const ButtomWidget(buttonColor: Color(0xfff),)
      ],
    );
  }
}

class TopicSelection extends StatefulWidget {
  const TopicSelection({super.key});

  @override
  State<TopicSelection> createState() => _TopicSelectionState();
}

class _TopicSelectionState extends State<TopicSelection> {
  Set<int> selectedIndices = Set<int>();

  void toggleSelection(int index) {
    setState(() {
      if (selectedIndices.contains(index)) {
        selectedIndices.remove(index);
      } else {
        selectedIndices.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 33.0,
              mainAxisSpacing: 44.0,
              mainAxisExtent: 100,
            ),
            itemCount: topicContent.length,
            itemBuilder: (_, i) {
              bool isSelected = selectedIndices.contains(i);

              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        toggleSelection(i);
                      });
                    },
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, right: 16.w),
                        height: 70.h,
                        width: 101.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            22.r,
                          ),
                          color: const Color(0xfffFFFFFF),
                          border: Border.all(
                            color: isSelected ? Color(0xfff00A9B7) : Color(0xfffFFFFF),
                            width: 2,
                          ),
                        ),
                        child: Image.asset(topicContent[i].image),
                      ),
                      if (isSelected)
                         Positioned(
                          top:0,
                          right:0,
                          child: Image.asset(
                            "assets/check.png",
                            // color: Color(0xfff00A9B7),
                          ),
                        ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 11.w),
                    child: Text(topicContent[i].title),
                  )
                ],
              );
            }),
      ],
    );
  }
}

class ButtomWidget extends StatelessWidget {
  final Color buttonColor;
  const ButtomWidget({super.key, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 22.w),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
          width: 355.w,
          height: 56.h,
          child: Padding(
            padding: EdgeInsets.only(left: 25.w),
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
              child: Text(
                "Start your Journey",
                style:
                    TextStyle(color: const Color(0xfffffffff), fontSize: 16.sp),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        Text(
          "You can still change your topic again later",
          style: TextStyle(fontSize: 14.sp, color: const Color(0xfffcacaca)),
        )
      ],
    );
  }
}
