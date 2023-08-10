import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Views/Widgets/TextFieldWidget.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

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
                color: white2,
                borderRadius: BorderRadius.circular(16.r)),
            child: const TextFeildwidget(
              hint: 'Your email',
              icon: Icon(
                Icons.email_rounded,
                color: teal,
                size: 17,
              ),
              obscuretext: false,
            )),
        Container(
            width: 335.w,
            height: 56.h,
            margin: EdgeInsets.only(top: 22.h),
            decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(22.r)),
            child: const TextFeildwidget(
              obscuretext: true,
              icon: Icon(
                Icons.lock_rounded,
                color: teal,
                size: 17,
              ),
              hint: 'Your password',
            )),
        Align(alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              Get.toNamed(Routes.resetpassword);
            },
            child: Text(
              "Forget Password?",
              style: TextStyle(color: Ligthgrey, fontSize: 14.sp,),
            ),
          ),
        ),

        Container(margin: EdgeInsets.only(bottom: 11.h,right: 22.w),
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(11)),
          width: 355.w,
          height: 56.h,
          child: Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: ElevatedButton(
              onPressed: isActive ? () {} : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: teal,
              ),
              child: const Text(
                "Login",
                style: TextStyle(color: white),
              ),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Text(
                "By continuing, you agree to our",
                style: TextStyle(color: grey, fontSize: 14.sp),
              ),
            ),
            Text(
              "Terms & ",
              style: TextStyle(color: teal, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 77.h,
          child: Text(
            "Conditions and Privacy Policy ",
            style: TextStyle(color: teal, fontSize: 14.sp),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.SignPage);
          },
          child: Text(
            "I don't have an account",
            style: TextStyle(color: teal, fontSize: 14.sp),
          ),
        )
      ],
    );
  }
}
