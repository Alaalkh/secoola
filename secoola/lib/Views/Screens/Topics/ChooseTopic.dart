import 'package:flutter/material.dart';
import 'package:secoola/theme/Color.dart';

import 'TitleWidget.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [titleWidget()],
        ),
      ),
    );
  }
}




