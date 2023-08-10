import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class titlePasswordWidget extends StatelessWidget {
  const titlePasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 66.h, right: 24.w),
          child: Text(
            "Reset your password   🔐",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 14.h,left: 30.w),
          child: Text(
            "Enter your email and a verification code to reset the ",
            style: TextStyle(color: Colors.grey, fontSize: 14.sp),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right: 66.w),
          child: Text(
            "password will be sent to your email.",
            style: TextStyle(color: Colors.grey, fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}
