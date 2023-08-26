import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/Views/Widgets/TextWidget.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class NewPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:white,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 11),
                height: 52,
                width: 52,
                margin: const EdgeInsets.only(top: 66, left: 22),
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
          const titleWidget(),
           passwordEntry()
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
                  "Set new password",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 66, left: 15),
                child: const Text(
                  "🔐",
                  style: TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 14, left: 44),
          child: Text(
            "Enter your email and a verification code to reset the ",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 44),
          child: Text(
            "password will be sent to your email.",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
      ],
    );
  }
}

class passwordEntry extends StatelessWidget {
  final passwordController = TextEditingController();

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
                    color: white2,
                    borderRadius: BorderRadius.circular(16)),
                child:  Textwidget(obscuretext: true,controller: passwordController,
                  hint: ' Your Password', icon: const Icon(size: 17,Icons.lock_rounded,color: teal,),
                )),
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
                    Get.toNamed(Routes.LoginPage);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: teal,
                  ),
                  child: const Text(
                    "Set new password",
                    style: TextStyle(color: white2),
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
