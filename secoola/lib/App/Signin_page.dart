import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Models/appRoutes.dart';
import 'package:secoola/Widgets/TextFieldWidget.dart';

import '../Widgets/IconWidget.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
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
                    margin: const EdgeInsets.only(top: 111, left: 44),
                    child: const Text(
                      "Create Account",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 111, left: 44),
                    child: const Text(
                      " ✌️  ",
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
                      "Create your account to start your course lessons.",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            const SocialMediaIcons(),
            const SizedBox(
              height: 22,
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
                edgeInsets: const EdgeInsets.only(left: 33, top: 55)),
            Iconwidget(
                image: Image.asset("assets/facebook.png"),
                edgeInsets: const EdgeInsets.only(left: 11, top: 55)),
            Iconwidget(
                image: Image.asset("assets/apple-logo.png"),
                edgeInsets: const EdgeInsets.only(left: 11, top: 55))
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 99, top: 60),
              child: const Text(
                "Or sign up with your email",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Color(0xFFFA9AEB2)),
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

  late TextEditingController controller = TextEditingController();
  late TextEditingController controller2 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    controller2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 335,
            height: 56,
            margin: const EdgeInsets.only(top: 66),
            decoration: BoxDecoration(
                color: const Color(0xFFFFFFFFF),
                borderRadius: BorderRadius.circular(16)),
            child: const TextFeildwidget(
              hint: 'Your email',
            )),
        Container(
            width: 335,
            height: 56,
            margin: const EdgeInsets.only(top: 22),
            decoration: BoxDecoration(
                color: const Color(0xFFFFFFFFF),
                borderRadius: BorderRadius.circular(22)),
            child: const TextFeildwidget(
              hint: 'Your password',
            )),
        const SizedBox(
          height: 33,
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
                    Get.toNamed(Routes.Chossetopic);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff00A9B7),
                  ),
                  child: const Text(
                    "Signup",
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
              margin: const EdgeInsets.only(left: 55, top: 22),
              child: const Text(
                "By continuing, you agree to our",
                style: TextStyle(color: Color(0xfffA9AEB2), fontSize: 14),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, left: 3),
              child: const Text(
                "Terms & ",
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 88),
              child: const Text(
                "Conditions and Privacy Policy ",
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14),
              ),
            )
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.LoginPage);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 122, top: 55),
                child: const Text(
                  "I already have an account",
                  style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
