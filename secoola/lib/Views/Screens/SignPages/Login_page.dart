import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/SignPages/LoginButton.dart';
import 'package:secoola/Views/Screens/SignPages/SocialMedia_Icons.dart';
import 'package:secoola/theme/Color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              padding: EdgeInsets.only(right: 100.w),
              child: Text(
                "Welcome Back  👋", // Align text to the left

                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22.sp,
                ),
              ),
            ),
            Text(
              "Login to your account to continue your course.",
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
            const LoginButton()
          ],
        ),
      ),
    );
  }
}
