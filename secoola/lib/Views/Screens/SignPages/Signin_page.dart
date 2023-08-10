import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/SignPages/SignButton.dart';
import 'package:secoola/Views/Screens/SignPages/SocialMedia_Icons.dart';
import 'package:secoola/theme/Color.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 130.w),
              child: Text(
                "Create Account ✌️", // Align text to the left

                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22.sp,
                ),
              ),
            ),
            Text(
              "Create your account to start your course lessons..",
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            ),
            const SocialMediaIcons(),
            SizedBox(
              height: 22.h,
            ),
            Text(
              "Or Log up with your email",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, color: grey),
            ),
            const SignButton()
          ],
        ),
      ),
    );
  }
}


