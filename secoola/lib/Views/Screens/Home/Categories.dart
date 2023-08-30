import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Controllers/Controller.dart';
import 'package:secoola/Models/Category.dart';
import 'package:secoola/Views/Screens/Home/Larvel_page.dart';
import 'package:secoola/Views/Widgets/CategoriesWidget.dart';
import 'package:secoola/theme/Color.dart';
import 'package:http/http.dart' as http;

class Categories extends StatefulWidget {
  final List<ProgrammingTopic> programmingtopics;

  Categories(this.programmingtopics);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ApiController apiController = Get.put(ApiController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.h),
              child: Text(
                "Categories",
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              width: 130.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.w),
              child: Text(
                "See All",
                style: TextStyle(color: teal, fontSize: 14.sp),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.programmingtopics.length,
              itemBuilder: (context, index) {
                final course = widget.programmingtopics[index];
                return Row(
                  children: [
                    GestureDetector(
                      child: CategoriesWidget(
                          image: course.image, Category: course.name),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LarvelScreen(apiController.larvelCourses,course.name),
                          ),
                        );
                      },
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
