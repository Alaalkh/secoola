import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccontPage extends StatelessWidget {
  const AccontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [title(), Emailinfo()],
    );
  }
}

class title extends StatelessWidget {
  const title({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 33, top: 66),
            child: const Text(
              "Profile",
              style: TextStyle(fontSize: 24, color: Colors.black),
            )),
        const SizedBox(
          width: 22,
        ),
        const SizedBox(
          width: 77,
        ),
      ],
    );
  }
}

class Emailinfo extends StatelessWidget {
  const Emailinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 22, top: 40),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: const Color(0xfffFFEA7D),
              borderRadius: BorderRadius.circular(12)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 22, top: 37),
                  child: const Text(
                    "Raymond Skyberg",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: const Text(
                    "raymond@mail.com",
                    style: TextStyle(fontSize: 12, color: Color(0xfffA19C9C)),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 88, top: 40),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(12)),
              child: Image.asset(
                "assets/editbutton.png",scale: 2,
              ),
            )
          ],
        )
      ],
    );
  }
}
