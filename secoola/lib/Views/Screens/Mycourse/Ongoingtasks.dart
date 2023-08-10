import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secoola/Views/Widgets/Mycourse_widget.dart';
import 'package:secoola/theme/Color.dart';

class Ondoingtask extends StatelessWidget {
  const Ondoingtask({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MyCourse(
              minibox: yellow,
              degree: 0.9,
              progress: "20/29 lesson",
              time: "November 2, 2021"),
          MyCourse(
              minibox: Ligthblue,
              degree: 0.3,
              progress: "7/32 lesson",
              time: "August 24, 2021"),
          MyCourse(
              minibox: Ligthorange,
              degree: 0.6,
              progress: "28/40 lesson",
              time: "August 24, 2021"),
        ],
      ),
    );
  }
}
