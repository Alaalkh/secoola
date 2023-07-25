import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/Models/appRoutes.dart';
import 'package:secoola/Widgets/TextFieldWidget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFAFAFA),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 11),
                  height: 52,
                  width: 52,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  ),
                  margin: const EdgeInsets.only(top: 66, left: 22),
                  decoration: BoxDecoration(
                      color: const Color(0xfffFFFFFF),
                      borderRadius: BorderRadius.circular(17)),
                ),
                const SizedBox(
                  width: 22,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 66, left: 44),
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          const titleWidget(),
          const EmailEntry()
        ],
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
        Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 66, left: 44),
                child: const Text(
                  "Reset your password",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 66, left: 15),
                child: const Text(
                  " 🔐   ",
                  style: TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 14, left: 44),
                child: const Text(
                  "Enter your email and a verification code to reset the ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 44),
                child: const Text(
                  "password will be sent to your email.",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class EmailEntry extends StatelessWidget {
  const EmailEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 335,
              height: 56,
              margin: const EdgeInsets.only(top: 44, left: 27),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFFF),
                  borderRadius: BorderRadius.circular(16)),
              child: const TextFeildwidget(
                hint: '  Your email', icon: Icon(Icons.rectangle_rounded,color: Color(0xfff00A9B7),size: 17,),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(11)),
              width: 355,
              height: 56,
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.verification);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff00a9b7),
                  ),
                  child: const Text(
                    "Send verification code",
                    style: TextStyle(color: Color(0xfffffffff)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
