import 'package:flutter/material.dart';

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
                  padding: EdgeInsets.only(left: 11),
                  height: 52,
                  width: 52,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  ),
                  margin: const EdgeInsets.only(top: 66, left: 22),
                  decoration: BoxDecoration(
                      color: Color(0xfffFFFFFF),
                      borderRadius: BorderRadius.circular(17)),
                ),
                SizedBox(
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
          titleWidget(),
          EmailEntry()
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
              child: TextField(
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
          ],
        ),
        SizedBox(
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
                  onPressed: () {},
                  child: const Text(
                    "Send verification code",
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
      ],
    );
  }
}
