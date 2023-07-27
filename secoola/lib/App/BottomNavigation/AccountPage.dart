import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/AccountWidget.dart';

class AccontPage extends StatelessWidget {
  const AccontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const title(),
          const Emailinfo(),
          const Accountwidget(),
          const Coursewidget(),
          const SupportWidget(),
          const Signout(),
          SizedBox(
            height: 40.h,
          )
        ],
      ),
    );
  }
}

class title extends StatelessWidget {
  const title({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 33, top: 66),
            child: const Text(
              "Profile",
              style: TextStyle(fontSize: 24, color: Colors.black),
            )),
        const SizedBox(
          width: 22,
        ),
        const SizedBox(
          width: 77,
        ),
      ],
    );
  }
}

class Emailinfo extends StatelessWidget {
  const Emailinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin:  EdgeInsets.only(left: 22.w, top: 40.h),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: const Color(0xfffFFEA7D),
              borderRadius: BorderRadius.circular(12.r)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin:  EdgeInsets.only(left: 22.w, top: 37.h),
                  child:  Text(
                    "Raymond Skyberg",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                )
              ],
            ),
             SizedBox(
              height: 11.h,
            ),
            Row(
              children: [
                Container(
                  margin:  EdgeInsets.only(left: 22.w),
                  child:  Text(
                    "raymond@mail.com",
                    style: TextStyle(fontSize: 12.sp, color: Color(0xfffA19C9C)),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Container(
              margin:  EdgeInsets.only(left: 100.w, top: 40.h),
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Image.asset(
                "assets/editbutton.png",
                scale: 2,
              ),
            )
          ],
        )
      ],
    );
  }
}

class Accountwidget extends StatelessWidget {
  const Accountwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(top: 33.h, left: 22.w),
                child: const Text("Account")),
          ],
        ),
        const CourseWidget(
          iconn: Icon(
            Icons.notifications,
          ),
          title: 'Notifications',
          title2: 'Security',
          iconn2: Icon(Icons.lock_open),
          iconn3: Icon(
            Icons.rectangle_rounded,
            size: 22,
          ),
          title3: 'Email ',
          more: Icon(Icons.arrow_forward_ios_outlined),
        )
      ],
    );
  }
}

class Coursewidget extends StatelessWidget {
  const Coursewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(top: 33.h, left: 22.w),
                child: const Text("Course")),
          ],
        ),
        const CourseWidget(
          iconn: Icon(
            Icons.rectangle_rounded,
          ),
          title: 'Certificate',
          title2: 'Payment',
          iconn2: Icon(Icons.rectangle_rounded),
          iconn3: Icon(Icons.rectangle_rounded),
          title3: 'History',
          more: Icon(Icons.arrow_forward_ios_outlined),
        )
      ],
    );
  }
}

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
        const SupportWid(
          iconn: Icon(
            Icons.star_outlined,
          ),
          title: 'Help',
          title2: 'FAQ',
          iconn2: Icon(Icons.rectangle_rounded),
          more: Icon(Icons.arrow_forward_ios_outlined),
        )
      ],
    );
  }
}

class Signout extends StatelessWidget {
  const Signout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 22.h),
          child: const Text(
            "Sign out",
            style: TextStyle(fontSize: 14, color: Colors.red),
          ),
        )
      ],
    );
  }
}
