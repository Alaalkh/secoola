import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Controllers/Apicontroller.dart';
import 'package:secoola/Models/Category.dart';
import 'package:secoola/Models/MainInfo.dart';
import 'package:secoola/Views/Widgets/CategoriesWidget.dart';
import 'package:secoola/Views/Widgets/CourseWidget.dart';
import 'package:secoola/theme/Color.dart';

import 'package:http/http.dart' as http;

class PopularCourse extends StatelessWidget {
  final List<PapularCourses> popularCourses;

  PopularCourse({required this.popularCourses});

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
              width: 100.w,
              height: 33.h,
            ),
            Text(
              "See All",
              style: TextStyle(color: teal, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 200.h,
          child: ListView.builder(
              itemCount: popularCourses.length,
              itemBuilder: (context, index) {
                final course = popularCourses[index];
                return Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 22.w, top: 22.h),
                              child: Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Image.network(
                                        course.image,
                                        width: 220.w,
                                        height: 140.h,
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only( top: 22.h),
                                            decoration: BoxDecoration(
                                              color: white2,
                                              borderRadius: BorderRadius.circular(9),
                                            ),
                                            height: 28.h,
                                            width: 49.w,
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/star.png",
                                                  height: 11.h,
                                                  width: 22.w,
                                                ),
                                                const Text("4.8")
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 77.w,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 22.w, top: 22.h),
                                            decoration: BoxDecoration(
                                              color: white2,
                                              borderRadius: BorderRadius.circular(9.r),
                                            ),
                                            height: 28.h,
                                            width: 28.w,
                                            child: const Icon(
                                              Icons.favorite,
                                              color: grey,
                                              size: 17,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  // Add other widgets to the Column if needed
                                ],
                              ),

                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 22.w),
                          child: Text(
                            course.name,
                            style: TextStyle(color: Colors.black, fontSize: 14.sp),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 22.w),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.person,
                                color: grey,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 6.h),
                                child: Text(
                                  course.ownerCourse,
                                  style: TextStyle(color: grey, fontSize: 12.sp),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 22.w, top: 6.h),
                              child: Text(
                                course.countStudent.toString(),
                                style: TextStyle(color: teal, fontSize: 16.sp),
                              ),
                            ),
                            Container(
                              height: 20.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Ligthred, borderRadius: BorderRadius.circular(22.r)),
                              margin: EdgeInsets.only(left: 11.w, top: 6.h),
                              padding: EdgeInsets.only(left: 10.w, right: 10.w),
                              child: Text(
                                "Best Seller",
                                style: TextStyle(color: Colors.red, fontSize: 12.sp),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                );
                // return ListTile(
                //   leading: Image.network(course.image),
                //   title: Text(course.name),
                //   subtitle: Text(course.description),
                //   trailing: Text('Students: ${course.countStudent}'),
                // );
              }),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: FutureBuilder<Api>(
        //     future: ApiService.fetchPopularCourse(),
        //     builder: (context, snapshot) {
        //       if (snapshot.connectionState == ConnectionState.waiting) {
        //         return const Center(child: CircularProgressIndicator());
        //       } else if (snapshot.hasError) {
        //         print(snapshot.error);
        //         return const Center(child: Text('Error loading data'));
        //       } else if (!snapshot.hasData || snapshot.data!.data.isEmpty) {
        //         return const Center(child: Text('No data available'));
        //       }  else {
        //         final topics = snapshot.data!.data;
        //         return Row(
        //           children: topics.map((topicJson) {
        //             final topic = Coding.fromJson(topicJson);
        //             return Padding(
        //               padding: const EdgeInsets.only(left:2),
        //               child: CategoriesWidget(
        //                 image: topic.ownerCourse,
        //                 Category: topic.description,
        //                 // Customize the UI as needed
        //               ),
        //             );
        //           }).toList(),
        //         );
        //       }
        //     },
        //   ),
        // ),
      ],
    );
  }
}
