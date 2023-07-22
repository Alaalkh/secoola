import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopicWidgdet extends StatelessWidget {
  final String Topictitle;

  const TopicWidgdet({super.key, required this.Topictitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 22, top: 22),
          child: const Text(
            "Your topic",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 10, top: 22),
          height: 20,
          width: 65,
          decoration: BoxDecoration(
            color: const Color(0xfffDCF3F5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            Topictitle,
            style: TextStyle(color: Color(0xfff00A9B7), fontSize: 12),
          ),
        ),
        const SizedBox(
          width: 122,
        ),
        Container(
          margin: const EdgeInsets.only(left: 22, top: 22),
          child: const Text(
            "See All",
            style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14),
          ),
        )
      ],
    );
  }
}
