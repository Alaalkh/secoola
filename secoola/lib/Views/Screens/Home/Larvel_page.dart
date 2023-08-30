import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Models/categoryiesclass.dart';
import 'package:secoola/Models/laravelCategory.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
import 'package:secoola/theme/Color.dart';
import 'package:http/http.dart' as http;

class LarvelScreen extends StatelessWidget {
  final Categoruyclass category;
  final String Categoryname;
  LarvelScreen({required this.category, required this.Categoryname});

  Future<List<Course>> fetchCoursesForCategory(int categoryId) async {
    final response =
        await http.get(Uri.parse('https://api.rafeeqissa.com/api/lecture'));
    final jsonData = json.decode(response.body);
    final List<Course> courses = [];

    if (jsonData['data'] != null && jsonData['data'] is List) {
      final courseData = jsonData['data'] as List;
      for (var courseJson in courseData) {
        if (courseJson['category_id'] == categoryId) {
          courses.add(Course.fromJson(courseJson));
        }
      }
    }

    return courses;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
          title: Text(
            Categoryname,
            style: TextStyle(color: white2),
          ),
          backcolor: teal),
      body: FutureBuilder(
        future: fetchCoursesForCategory(category.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData ||
              (snapshot.data as List<Course>).isEmpty) {
            return const Text('No courses available for this category.');
          } else {
            return GridView.builder(
              itemCount: (snapshot.data as List<Course>).length,
              itemBuilder: (context, index) {
                final course = (snapshot.data as List<Course>)[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CachedNetworkImage(
                            imageUrl: course.image,
                            width: 142.w,
                            height: 100.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30.w, top: 22.h),
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
                                    const Text("4.9")
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 44.w, top: 22.h),
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
                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Text(course.name),
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 20.w, top: 6.h),
                              child: const Icon(
                                Icons.person,
                                color: Color(0xfffA9AEB2),
                              )),
                          SizedBox(
                            width: 100,
                            child: Padding(
                              padding: EdgeInsets.only(top: 6.h),
                              child: Text(
                                maxLines: 2, // Restrict text to a single line
                                overflow: TextOverflow.ellipsis,
                                course.ownerCourse,
                                style: TextStyle(
                                    color: const Color(0xfffA9AEB2),
                                    fontSize: 12.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 22.w),
                            child: Text(
                              "\$ 24",
                              style: TextStyle(
                                  color: const Color(0xfff00A9B7),
                                  fontSize: 16.sp),
                            ),
                          ),
                          Container(
                            height: 15.h,
                            width: 77.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xfffDCF3F5),
                                borderRadius: BorderRadius.circular(22.r)),
                            margin: EdgeInsets.only(left: 11.w, top: 6.h),
                            child: Text(
                              "Label",
                              style: TextStyle(
                                  color: const Color(0xfff00A9B7),
                                  fontSize: 12.sp),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 33.0,
                mainAxisExtent: 244,
              ),
            );
          }
        },
      ),
    );

  }
}
