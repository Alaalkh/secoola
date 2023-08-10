import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/Topics/Buttom_Widget.dart';
import 'package:secoola/Views/Screens/Topics/ChooseTopic.dart';
import 'package:secoola/Views/Screens/Topics/Topic_Selection.dart';
import 'package:secoola/theme/Color.dart';

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
                TextStyle(fontSize: 14.sp, color: grey),
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
