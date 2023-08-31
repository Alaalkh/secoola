import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Screens/ForgotPassword/Verification.dart';
import 'package:secoola/Views/Widgets/TextWidget.dart';
import 'package:secoola/theme/Color.dart';

import '../Topics/TitleWidget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    void sendOTP(BuildContext context) async {
      String email = emailController.text;

      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        Navigator.push(context, MaterialPageRoute(builder: (context) => VerficicationPage(email: email)));
      } catch (e) {
        // Handle error
      }
    }
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
          Row(
            children: [
              Container(
                width: 335,
                height: 56,
                margin:  EdgeInsets.only(top: 44.h, left: 27.w),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(16)),
                child:  Textwidget(obscuretext: false,controller: emailController,
                  hint: '  Your email', icon: Icon(Icons.email,color: teal,size: 17,),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          Row(
            children: [
              Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(11)),
                width: 355.w,
                height: 56.h,
                child: Padding(
                  padding:  EdgeInsets.only(left: 25.w),
                  child: ElevatedButton(
                    onPressed: () => sendOTP(context),                    style: ElevatedButton.styleFrom(
                      backgroundColor: teal,
                    ),
                    child: const Text(
                      "Send verification code",
                      style: TextStyle(color: white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


