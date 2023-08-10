import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:secoola/Views/Screens/AccountPages/Account_Widget.dart';
import 'package:secoola/Views/Screens/AccountPages/Course_Widget.dart';
import 'package:secoola/Views/Screens/AccountPages/EmailInfo.dart';
import 'package:secoola/Views/Screens/AccountPages/Signout.dart';
import 'package:secoola/Views/Screens/AccountPages/Support_Widget.dart';
import 'package:secoola/Views/Widgets/AccountWidget.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class AccontPage extends StatelessWidget {
  const AccontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          title(),
          Emailinfo(),
          Accountwidget(),
          Coursewidget(),
          SupportWidget(),
          Signout(),

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
          width: 100,
        ),

      ],
    );
  }
}






