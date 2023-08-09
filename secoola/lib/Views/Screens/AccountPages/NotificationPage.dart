import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Widgets/NotificationWidget.dart';

import '../../../theme/Color.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ Container(
            padding: const EdgeInsets.only(left: 11),
            height: 52,
            width: 52,
            margin: const EdgeInsets.only(top: 100, left: 22),
            decoration: BoxDecoration(
                color: const Color(0xfffFFFFFF),
                borderRadius: BorderRadius.circular(17)),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ),SizedBox(width: 22.w,),
            Container(
              margin: EdgeInsets.only(top: 100.h, left: 11.w),
              child: Text(
                "Notification",
                style: TextStyle(fontSize: 24.sp),
              ),
            ),
            SizedBox(
              width: 22.w,
            ),
            Container(
              margin: EdgeInsets.only(top: 100.h, left: 11.w),
              child: Text(
                "👋   ",
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
                image: Icon(Icons.rectangle_rounded, color: teal),
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
    ));
  }
}
