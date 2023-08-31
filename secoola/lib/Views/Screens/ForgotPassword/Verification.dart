import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/Views/Widgets/Verification_code_widget.dart';

import '../../../theme/Color.dart';

class VerficicationPage extends StatelessWidget {
  final String email;
  final TextEditingController otpController = TextEditingController();

  VerficicationPage({required this.email});

  void verifyOTP(BuildContext context) async {
    String otp = otpController.text;

    try {
      AuthCredential credential = EmailAuthProvider.credential(email: email, password: otp);
      await FirebaseAuth.instance.signInWithCredential(credential);
      // Verification successful, proceed with necessary actions
    } catch (e) {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding:  EdgeInsets.only(left: 11.w),
                  height: 52.h,
                  width: 52.w,
                  margin:  EdgeInsets.only(top: 66.h, left: 22.w),
                  decoration: BoxDecoration(
                      color: white2,
                      borderRadius: BorderRadius.circular(17)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  ),
                ), SizedBox(
                  width: 22.w,
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 66.h, left: 44.w),
                  child: const Text(
                    "Verify",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),

            const titleWidget(),
            const NumberCode(),
            const SizedBox(
              height: 22,
            ),
            const VerfiyButton(),
            const SizedBox(
              height: 66,
            ),
            const ResendCode()
          ],
        ),
      ),
    );
  }
}

class titleWidget extends StatelessWidget {
  const titleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 66, left: 44),
              child: const Text(
                "Recovery code  📲",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
              ),
            ),

          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 14, left: 44),
          child: const Text(
            "Check your inbox, we have send the Verification   ",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 44),
          child: const Text(
            "code to your email.",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
      ],
    );
  }
}

class NumberCode extends StatelessWidget {
  const NumberCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin:  EdgeInsets.only(left: 25.w, top: 33.h),
              decoration: BoxDecoration(
                  color: white2,
                  borderRadius: BorderRadius.circular(12)),
              child: const CodeTextFeild()),
          Container(
              margin:  EdgeInsets.only(top: 33.h),
              decoration: BoxDecoration(
                  color: white2,
                  borderRadius: BorderRadius.circular(12)),
              child: const CodeTextFeild()),
          Container(
            margin:  EdgeInsets.only(top: 33.h),
            decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(12)),
            child: const CodeTextFeild(),
          ),
          Container(
              margin:  EdgeInsets.only(top: 33.h, right: 14.w),
              decoration: BoxDecoration(
                  color: white2,
                  borderRadius: BorderRadius.circular(12)),
              child: const CodeTextFeild())
        ],
      ),
    );
  }
}

class VerfiyButton extends StatelessWidget {
  const VerfiyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
      width: 355,
      height: 56,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.newpassword);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: teal,
          ),
          child: const Text(
            "Verify",
            style: TextStyle(color: white2),
          ),
        ),
      ),
    );
  }
}

class ResendCode extends StatelessWidget {
  const ResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 77),
          child: const Text(
            "Not retrieve any code?",
            style: TextStyle(color: grey, fontSize: 14),
          ),
        ),
        Container(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "NewPassword");
                },
                child: const Text("Resend code",
                    style: TextStyle(color: teal, fontSize: 14))))
      ],
    );
  }
}
