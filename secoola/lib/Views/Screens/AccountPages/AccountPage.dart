import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:secoola/Views/Widgets/AccountWidget.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

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
          margin: EdgeInsets.only(left: 22.w, top: 40.h),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: yellow, borderRadius: BorderRadius.circular(12.r)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22.w, top: 37.h),
                  child: Text(
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
                  margin: EdgeInsets.only(left: 22.w),
                  child: Text(
                    "raymond@mail.com",
                    style: TextStyle(fontSize: 12.sp, color: grey),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 100.w, top: 40.h),
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: white2, borderRadius: BorderRadius.circular(12.r)),
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
        Container(
          margin: EdgeInsets.only(top: 22.h),
          width: 335.w,
          height: 152.h,
          decoration: BoxDecoration(
              color: Color(0xfffFFFFFF),
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
              ),          GestureDetector(
                onTap: () {},
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.security,
                  ),
                  title: 'Security',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),          GestureDetector(
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
        Container(
          margin: EdgeInsets.only(top: 22.h),
          width: 335.w,
          height: 152.h,
          decoration: BoxDecoration(
              color: Color(0xfffFFFFFF),
              borderRadius: BorderRadius.circular(20.r)),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.notifications,
                  ),
                  title: 'Certificate',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),          GestureDetector(
                onTap: () {                               Get.toNamed(Routes.Paymentpage);
    },
                child: const CourseWidget(
                  iconn: Icon(
                    Icons.payment,
                  ),
                  title: 'Payment',
                  more: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),          GestureDetector(
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
            Icons.help,
          ),
          title: 'Help',
          title2: 'FAQ',
          iconn2: Icon(Icons.question_answer),
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
