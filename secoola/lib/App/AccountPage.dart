import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widgets/AccountWidget.dart';

class AccontPage extends StatelessWidget {
  const AccontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        children: [title(), Emailinfo(), Accountwidget(),Coursewidget(),SupportWidget(),
          Signout(),SizedBox(height: 40.h,)],
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
          margin: const EdgeInsets.only(left: 22, top: 40),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: const Color(0xfffFFEA7D),
              borderRadius: BorderRadius.circular(12)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 37),
                  child: const Text(
                    "Raymond Skyberg",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: const Text(
                    "raymond@mail.com",
                    style: TextStyle(fontSize: 12, color: Color(0xfffA19C9C)),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 88, top: 40),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(12)),
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
        const AccountWidget(
          iconn: Icon(
            Icons.notifications,
          ),
          title: 'Notifications',
          title2: 'Security',
          iconn2: Icon(Icons.lock_open),
          iconn3: Icon(Icons.rectangle_rounded,size: 22,),
          title3: 'Email preference',
          more: Icon(Icons.arrow_forward_ios_outlined) ,
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
          more: Icon(Icons.arrow_forward_ios_outlined) ,
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

          more: Icon(Icons.arrow_forward_ios_outlined) ,
        )
      ],
    );
  }
}
class Signout extends StatelessWidget {
  const Signout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment:MainAxisAlignment.center,children: [
      Container(margin:EdgeInsets.only(top: 22.h),child: Text("Sign out",style: TextStyle(fontSize: 14,color: Colors.red),),)
    ],);
  }
}
