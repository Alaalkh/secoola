import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/Views/Screens/ForgotPassword/EmailEntry.dart';
import 'package:secoola/Views/Screens/ForgotPassword/titleWidget.dart';
import 'package:secoola/appRoutes.dart';

import 'package:secoola/Views/Widgets/TextFieldWidget.dart';
import 'package:secoola/theme/Color.dart';

import '../Topics/TitleWidget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white2,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding:  EdgeInsets.only(left: 11.w),
                height: 52.h,
                width: 52.w,
                margin:  EdgeInsets.only(top: 66.h, left: 22.w),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(17)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                ),
              ),
               SizedBox(
                width: 22.w,
              ),
               Padding(
                padding: EdgeInsets.only(top: 66.h, left: 44.w),
                child: Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ],
          ),
          const titlePasswordWidget(),
          const EmailEntry()
        ],
      ),
    );
  }
}


