import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Widgets/DesignTopics.dart';
import 'package:secoola/Views/Widgets/TopicWidget.dart';

import 'package:secoola/theme/Color.dart';
class CodingTopic extends StatelessWidget {
  const CodingTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Coding")],
        ),
        SizedBox(
          height: 226.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              DesignTopics(
                boxcolor: purple,
                titletext: "Flutter Class - Adv...",
                coursetutor: "Cameron Williamson",
                price: "\$ 97",
                colorText: teal,
                recommend: "Best Deal",
                background: Ligthblue,
              ),
              DesignTopics(
                boxcolor: yellow,
                titletext: "Python Class - Adv...",
                coursetutor: "Brooklyn Simmons",
                price: "\$ 66",
                colorText: teal,
                recommend: "Best Deal",
                background: Ligthblue,
              ),
              DesignTopics(
                boxcolor: teal,
                titletext: "Swift Class - Adv...",
                coursetutor: "Cameron Williamson",
                price: "\$ 41",
                colorText: teal,
                recommend: "Label",
                background: Ligthblue,
              ),
            ],
          ),
        )
        // child: Row(
        //   children: [

        //   ],
        // ),
      ],
    );
  }
}
