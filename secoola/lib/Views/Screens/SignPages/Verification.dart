import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/Views/Widgets/Verification_code_widget.dart';

import '../../../theme/Color.dart';

class VerficicationPage extends StatelessWidget {
  const VerficicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Container(
            child: Row(
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
                    "Verify",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
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
                  "Recovery code",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 66, left: 15),
                child: const Text(
                  "📲 ",
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
                  "Check your inbox, we have send the Verification   ",
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
                  "code to your email.",
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

class NumberCode extends StatelessWidget {
  const NumberCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 25, top: 33),
              decoration: BoxDecoration(
                  color: white2,
                  borderRadius: BorderRadius.circular(12)),
              child: const CodeTextFeild()),
          Container(
              margin: const EdgeInsets.only(top: 33),
              decoration: BoxDecoration(
                  color: white2,
                  borderRadius: BorderRadius.circular(12)),
              child: const CodeTextFeild()),
          Container(
            margin: const EdgeInsets.only(top: 33),
            decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(12)),
            child: const CodeTextFeild(),
          ),
          Container(
              margin: const EdgeInsets.only(top: 33, right: 14),
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
    return Row(
      children: [
        Container(
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
        ),
      ],
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
