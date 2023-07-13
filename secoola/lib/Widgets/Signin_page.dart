import 'package:flutter/material.dart';

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
            Container(
              margin: const EdgeInsets.only(left: 33, top: 55),
              height: 52,
              width: 98,
              child: Image.asset("assets/search.png"),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, top: 55),
              height: 52,
              width: 98,
              child: Image.asset("assets/facebook.png"),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, top: 55),
              height: 52,
              child: Image.asset("assets/apple-logo.png"),
              width: 98,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
            )
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
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: "    Your email",
              hintStyle:
                  const TextStyle(fontSize: 14, color: Color(0xFFFA9AEB2)),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  color: Color(0xff00A9B7),
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        Container(
          width: 335,
          height: 56,
          margin: const EdgeInsets.only(top: 22),
          decoration: BoxDecoration(
              color: const Color(0xFFFFFFFFF),
              borderRadius: BorderRadius.circular(22)),
          child: TextField(
            controller: controller2,
            decoration: InputDecoration(
              hintText: "  Your password",
              hintStyle:
                  const TextStyle(fontSize: 14, color: Color(0xFFFA9AEB2)),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  color: Color(0xff00A9B7),
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        SizedBox(
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
                  onPressed: isActive
                      ? () {
                          setState(() {
                            isActive = false;
                            controller.clear();
                            controller2.clear();
                          });
                        }
                      : null,
                  child: const Text(
                    "Signup",
                    style: TextStyle(color: Color(0xfffffffff)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff00A9B7),
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
                Navigator.pushNamed(context, 'LoginPage');
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
