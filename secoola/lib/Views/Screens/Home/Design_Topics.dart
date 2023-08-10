import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Widgets/DesignTopics.dart';
import 'package:secoola/Views/Widgets/TopicWidget.dart';

import 'package:secoola/theme/Color.dart';
class DesignTopic extends StatelessWidget {
  const DesignTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Design")],
        ),
        Container(
          height: 226.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              DesignTopics(
                boxcolor: yellow,
                titletext: "Design Thingking F...",
                coursetutor: "Dianne Russell",
                price: "\$ 75",
                colorText: teal,
                recommend: "Best Deal",
                background: Ligthblue,
              ),
              DesignTopics(
                boxcolor: Ligthorange,
                titletext: "Figma Prototyping 1...",
                coursetutor: "Jacob Jones",
                price: "\$ 32",
                colorText: teal,
                recommend: "Best Deal",
                background: Ligthblue,
              ),
              DesignTopics(
                boxcolor: pink,
                titletext: "UI UX Design Essentials",
                coursetutor: "Jacob Jones",
                price: "\$ 83",
                colorText: teal,
                recommend: "Best Deal",
                background: Ligthblue,
              ),
            ],
          ),
        )
      ],
    );
  }
}
