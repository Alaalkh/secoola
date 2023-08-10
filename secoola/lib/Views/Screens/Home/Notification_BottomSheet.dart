import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Widgets/NotificationWidget.dart';
import 'package:secoola/theme/Color.dart';

class BottomSheet_Content extends StatelessWidget {
  const BottomSheet_Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 22.h, left: 11.w),
              child: Text(
                "Notification",
                style: TextStyle(fontSize: 24.sp),
              ),
            ),
            SizedBox(
              width: 22.w,
            ),
            Container(
              margin: EdgeInsets.only(top: 22.h, left: 11.w),
              child: Text(
                "👋",
                style: TextStyle(fontSize: 24.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h, left: 11.w),
              child: Text(
                "Today",
                style: TextStyle(fontSize: 18.sp),
              ),
            )
          ],
        ),
        const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NotificationWidget(
                image: Icon(Icons.payments_outlined, color: teal),
                description: 'Start your course now.',
                title: 'Your payment is success',
                list: Icon(Icons.more_horiz, color: teal),
              ),
              NotificationWidget(
                image: Icon(Icons.notifications, color: teal),
                description: 'Continue you recent course. ',
                title: 'Daily reminder',
                list: Icon(Icons.more_horiz, color: teal),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h, left: 11.w),
              child: Text(
                "Yesterday",
                style: TextStyle(fontSize: 18.sp),
              ),
            )
          ],
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NotificationWidget(
              image: Icon(Icons.download, color: teal),
              description: 'Go toaccount page to download',
              title: 'Download your certificate',
              list: Icon(Icons.more_horiz, color: teal),
            ),
            NotificationWidget(
              image: Icon(Icons.sunny, color: teal),
              description: 'Get the best offer only for you',
              title: 'Summer sale!',
              list: Icon(Icons.more_horiz, color: teal),
            ),
          ],
        ),
      ],
    );
  }
}
