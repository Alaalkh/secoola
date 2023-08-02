import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/Views/Widgets/IconWidget.dart';
import 'package:secoola/Views/Widgets/TextFieldWidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 111.h, left: 44.w),
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 22.sp),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 111.h, left: 44.w),
                    child: Text(
                      "👋   ",
                      style: TextStyle(fontSize: 24.sp),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 14.h, left: 44.w),
                    child: Text(
                      "Login to your account to continue your course.",
                      style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                    ),
                  )
                ],
              ),
            ),
            const SocialMediaIcons(),
            SizedBox(
              height: 22.h,
            ),
            const SignButton()
          ],
        ),
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Iconwidget(
                image: Image.asset("assets/search.png"),
                edgeInsets: EdgeInsets.only(left: 33.w, top: 55.h)),
            Iconwidget(
                image: Image.asset("assets/facebook.png"),
                edgeInsets: EdgeInsets.only(left: 11.w, top: 55.h)),
            Iconwidget(
                image: Image.asset("assets/apple-logo.png"),
                edgeInsets: EdgeInsets.only(left: 11.w, top: 55.h))
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 99.w, top: 60.h),
              child: Text(
                "Or Log up with your email",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.sp, color: Color(0xFFFA9AEB2)),
              ),
            )
          ],
        )
      ],
    );
  }
}

class SignButton extends StatefulWidget {
  const SignButton({super.key});

  @override
  State<SignButton> createState() => _SignButtonState();
}

class _SignButtonState extends State<SignButton> {
  bool isActive = true;
  bool isActive2 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 335.w,
            height: 56.h,
            margin: EdgeInsets.only(top: 66.h),
            decoration: BoxDecoration(
                color: const Color(0xFFFFFFFFF),
                borderRadius: BorderRadius.circular(16.r)),
            child: const TextFeildwidget(
              hint: 'Your email',
              icon: Icon(
                Icons.rectangle_rounded,
                color: Color(0xfff00A9B7),
                size: 17,
              ),
              obscuretext: false,
            )),
        Container(
            width: 335.w,
            height: 56.h,
            margin: EdgeInsets.only(top: 22.h),
            decoration: BoxDecoration(
                color: const Color(0xFFFFFFFFF),
                borderRadius: BorderRadius.circular(22.r)),
            child: const TextFeildwidget(
              obscuretext: true,
              icon: Icon(
                Icons.lock_rounded,
                color: Color(0xfff00A9B7),
                size: 17,
              ),
              hint: 'Your password',
            )),
        Container(
          margin: EdgeInsets.only(left: 199.w),
          child: TextButton(
            onPressed: () {
              Get.toNamed(Routes.resetpassword);
            },
            child: Text(
              "Forget Password?",
              style: TextStyle(color: Color(0xfffCACACA), fontSize: 14.sp),
            ),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(11)),
              width: 355.w,
              height: 56.h,
              child: Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: ElevatedButton(
                  onPressed: isActive ? () {} : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff00A9B7),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Color(0xfffffffff)),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 55.w, top: 22.h),
              child: Text(
                "By continuing, you agree to our",
                style: TextStyle(color: Color(0xfffA9AEB2), fontSize: 14.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.h, left: 3.w),
              child: Text(
                "Terms & ",
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 88.w),
              child: Text(
                "Conditions and Privacy Policy ",
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.SignPage);
              },
              child: Container(
                margin: EdgeInsets.only(left: 122.w, top: 55.h),
                child: Text(
                  "I don't have an account",
                  style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14.sp),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
