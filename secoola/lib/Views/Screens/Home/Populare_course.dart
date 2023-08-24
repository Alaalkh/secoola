import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Models/MainInfo.dart';
import 'package:secoola/Views/Screens/Course/Cousre_Details.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

import 'package:http/http.dart' as http;

class PopularCourse extends StatelessWidget {
  final List<PapularCourses> popularCourses;

  PopularCourse(this.popularCourses);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 22.h),
          child: Row(
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
        ),
        SizedBox(height: 240.h,
          child: ListView.builder(scrollDirection: Axis.horizontal,
              itemCount: popularCourses.length,
              itemBuilder: (context, index) {
                final course = popularCourses[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
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
                                    GestureDetector(
                                      child: Image.network(
                                        course.image,
                                        width: 220.w,
                                        height: 140.h,
                                      ),onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  CourseDetails(item: popularCourses[index])),
                                      );                                    },
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
                      SizedBox(
                        width: 200.w,
                        child: Padding(
                          padding: EdgeInsets.only(left: 22.w),
                          child: Text( maxLines: 1, // Restrict text to a single line
                            overflow: TextOverflow.ellipsis,
                            course.name,
                            style: TextStyle(color: Colors.black, fontSize: 14.sp),
                          ),
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
                            SizedBox(width: 133,
                              child: Text(maxLines: 1, // Restrict text to a single line
                                overflow: TextOverflow.ellipsis,
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
                              "\$66",
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
                );

              }),
        ),

      ],
    );
  }
}