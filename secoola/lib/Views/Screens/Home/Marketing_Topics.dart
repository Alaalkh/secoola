import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Views/Widgets/DesignTopics.dart';
import 'package:secoola/Views/Widgets/TopicWidget.dart';

import 'package:secoola/theme/Color.dart';
class MarketingTopic extends StatelessWidget {
  const MarketingTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Marketing")],
        ),
        SizedBox(
          height: 226.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              DesignTopics(
                boxcolor: Ligthorange,
                titletext: "Digital Marketing S...",
                coursetutor: "Esther Howard",
                price: "\$ 49",
                colorText: Colors.red,
                recommend: "Hot Deals",
                background: Ligthred,
              ),
              DesignTopics(
                boxcolor: Color(0xfff86F2CB),
                titletext: "Personal Branding F...",
                coursetutor: "Savannah Nguyen",
                price: "\$ 56",
                colorText: teal,
                recommend: "Most Sold",
                background: Ligthblue,
              ),
              DesignTopics(
                boxcolor: Color(0xfff00A9B7),
                titletext: "marketing&Marketing ",
                coursetutor: "Arlene McCoy",
                price: "\$ 41",
                colorText: Color(0xfff00A9B7),
                recommend: "Best Deal",
                background: Ligthblue,
              )
            ],
          ),
        ),

      ],
    );
  }
}
