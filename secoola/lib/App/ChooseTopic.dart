import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Models/TopicContent.dart';
import 'package:secoola/Models/appRoutes.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffffafafa),
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
            Container(
              margin: const EdgeInsets.only(left: 66, top: 88),
              child: const Text(
                "Pick your favorite topic",
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 44, top: 11),
              width: 294,
              height: 41,
              child: const Text(
                "Choose your favorite topic to help us deliver the most suitable course for you.",
                style: TextStyle(fontSize: 14, color: Color(0xfffa9aeb2)),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
        const TopicSelection(),
        const SizedBox(
          height: 66,
        ),
        const ButtomWidget()
      ],
    );
  }
}

class TopicSelection extends StatelessWidget {
  const TopicSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 33.0,
          mainAxisSpacing: 44.0,
          mainAxisExtent: 100,
        ),
        itemCount: topicContent.length,
        itemBuilder: (_, i) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 22, right: 16),
                height: 80,
                width: 101,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    22,
                  ),
                  color: const Color(0xfffffffff),
                ),
                child: Image.asset(topicContent[i].image),
              ),
              Container(
                margin: const EdgeInsets.only(left: 11),
                child: Text(topicContent[i].title),
              )
            ],
          );
        });
  }
}

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 22),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          width: 355,
          height: 56,
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.HomePage);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Color(0xfff00a9b7); //<-- SEE HERE
                    }
                    return const Color(
                        0xfffcacaca); // Defer to the widget's default.
                  },
                ),
              ),
              child: const Text(
                "Start your Journey",
                style: TextStyle(color: Color(0xfffffffff), fontSize: 16),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        const Text(
          "You can still change your topic again later",
          style: TextStyle(fontSize: 14, color: Color(0xfffcacaca)),
        )
      ],
    );
  }
}
