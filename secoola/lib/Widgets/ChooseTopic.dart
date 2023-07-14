import 'package:flutter/material.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFAFAFA),
      body: Column(
        children: [titleWidget()],
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
        Row(
          children: [
            Container(margin: const EdgeInsets.only(left: 66,top: 88),
              child: const Text("Pick your favorite topic",style: TextStyle(fontSize: 24),),
            )
          ],
        ),
        Row(
          children: [
            Container(margin: const EdgeInsets.only(left: 44,top: 11),width: 294,height: 41,
              child: const Text("Choose your favorite topic to help us deliver the most suitable course for you.",style: TextStyle(fontSize: 14,color: Color(0xfffA9AEB2)),textAlign: TextAlign.center,),
            )
          ],
        )
      ],
    );
  }
}
