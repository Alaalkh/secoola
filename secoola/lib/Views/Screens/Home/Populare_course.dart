import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Controllers/Apicontroller.dart';
import 'package:secoola/Models/Category.dart';
import 'package:secoola/Models/MainInfo.dart';
import 'package:secoola/Views/Widgets/CategoriesWidget.dart';
import 'package:secoola/theme/Color.dart';

import '../../../appRoutes.dart';
import '../../Widgets/CourseWidget.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Popular course",
              style: TextStyle(color: Colors.black, fontSize: 18.sp),
            ),
            SizedBox(
              width: 100.w,height: 33.h,
            ),
            Text(
              "See All",
              style: TextStyle(color: teal, fontSize: 14.sp),
            )
          ],
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       GestureDetector(    onTap: () {
        //         Get.toNamed(Routes.CourseDetails);
        //
        //       },
        //         child: const CourseWidget(
        //           boxcolor: yellow,
        //           titletext: "Design Thingking Fundamental",
        //           coursetutor: "Robert Fox",
        //           price: "\$ 150",
        //           colorText: teal,
        //           recommend: "Best Seller",
        //           background: Ligthblue, backimage: "assets/flutter.jpg",
        //         ),
        //       ),
        //       const CourseWidget(backimage: "assets/flutter.jpg",
        //         boxcolor: blue,
        //         titletext: "Flutter Class - Advance Program",
        //         coursetutor: "Wade Warren",
        //         price: "\$ 24",
        //         colorText: Colors.red,
        //         recommend: "Recomended",
        //         background: Ligthred,
        //       )
        //     ],
        //   ),
        // )
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: FutureBuilder<Api>(
            future: ApiService.fetchPopularCourse(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text('Error loading data'));
              } else if (!snapshot.hasData || snapshot.data!.data.isEmpty) {
                return const Center(child: Text('No data available'));
              }  else {
                final topics = snapshot.data!.data;
                return Row(
                  children: topics.map((topicJson) {
                    final topic = Coding.fromJson(topicJson);
                    return Padding(
                      padding: const EdgeInsets.only(left:2),
                      child: CategoriesWidget(
                        image: topic.ownerCourse,
                        Category: topic.description,
                        // Customize the UI as needed
                      ),
                    );
                  }).toList(),
                );
              }
            },
          ),
        ),

      ],

    );
  }
}
