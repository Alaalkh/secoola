import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Controllers/Controller.dart';
import 'package:secoola/Models/Category.dart';
import 'package:secoola/Models/TopicContent.dart';
import 'package:secoola/theme/Color.dart';

class TopicSelection extends StatefulWidget {
  const TopicSelection({super.key});

  @override
  State<TopicSelection> createState() => _TopicSelectionState();
}

class _TopicSelectionState extends State<TopicSelection> {
  Set<int> selectedIndices = Set<int>();
  final ApiController apiController = Get.put(ApiController());

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
    return FutureBuilder<ApiResponse>(
      future: ApiController.fetchCategory(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error loading data'));
        } else if (!snapshot.hasData || snapshot.data!.data.isEmpty) {
          return const Center(child: Text('No data available'));
        } else {
          final topics = snapshot.data!.data;
          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 44.0,
              mainAxisSpacing: 11.0,
              mainAxisExtent: 103,
            ),
            itemCount: topics.length,
            itemBuilder: (_, i) {
              bool isSelected = selectedIndices.contains(i);
              final topicJson = topics[i];
              final topic = ProgrammingTopic.fromJson(topicJson);
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        toggleSelection(i);
                      });
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 22.w, right: 16.w),
                          height: 78.h,
                          width: 155.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: white2,
                            border: Border.all(
                              color: isSelected ? teal : white2,
                              width: 2,
                            ),
                          ),
                          child: SizedBox(
                            width: 66, // Your desired width
                            height: 55, // Your desired height
                            child: CachedNetworkImage(
                              imageUrl: topic.image,
                               // Adjust the fit based on your needs
                            ),
                          ),
                        ),
                        if (isSelected)
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Image.asset(
                              "assets/checkmark.png",
                              color: teal,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 11.w),
                    child: Text(topic.name),
                  )
                ],
              );
            },
          );
        }
      },
    );
  }
}
