import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Models/TopicContent.dart';
import 'package:secoola/theme/Color.dart';

class TopicSelection extends StatefulWidget {
  const TopicSelection({super.key});

  @override
  State<TopicSelection> createState() => _TopicSelectionState();
}

class _TopicSelectionState extends State<TopicSelection> {
  Set<int> selectedIndices = Set<int>();

  void toggleSelection(int index) {
    setState(() {
      if (selectedIndices.contains(index)) {
        selectedIndices.remove(index);
      } else {
        selectedIndices.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
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
              bool isSelected = selectedIndices.contains(i);

              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        toggleSelection(i);
                      });
                    },
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, right: 16.w),
                        height: 70.h,
                        width: 101.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            22.r,
                          ),
                          color: white2,
                          border: Border.all(
                            color: isSelected ? teal : white2,
                            width: 2,
                          ),
                        ),
                        child: Image.asset(topicContent[i].image),
                      ),
                      if (isSelected)
                        Positioned(
                          top:0,
                          right:0,
                          child: Image.asset(
                            "assets/checkmark.png",
                            color: teal,
                          ),
                        ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 11.w),
                    child: Text(topicContent[i].title),
                  )
                ],
              );
            }),
      ],
    );
  }
}