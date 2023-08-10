import 'package:flutter/material.dart';
import 'package:secoola/Views/Widgets/CurriculumWidget.dart';
import 'package:secoola/theme/Color.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CurriculumWidgets(
          Name: "Introduction         ",
          duraion: "00.53 mins",
          iconn: Icon(Icons.slow_motion_video_outlined, size: 33, color: teal),
        ),
        CurriculumWidgets(
            Name: "Design Thingking",
            duraion: "05.25 mins",
            iconn:
            Icon(Icons.slow_motion_video_outlined, size: 33, color: teal)),
        CurriculumWidgets(
            Name: "Improving Design",
            duraion: "05.36 mins",
            iconn:
            Icon(Icons.slow_motion_video_outlined, size: 33, color: teal))
      ],
    );
  }
}
