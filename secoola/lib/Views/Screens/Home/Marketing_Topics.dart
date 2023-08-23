import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Models/DesignCourse.dart';
import 'package:secoola/Views/Widgets/TopicWidget.dart';

import 'package:secoola/theme/Color.dart';
class MarketingTopic extends StatelessWidget {
  final List<DesignCourses> Marketingtopic;

  MarketingTopic({required this.Marketingtopic});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Marketing")],
        ),
        SizedBox(height: 209.h,
          child: ListView.builder(scrollDirection: Axis.horizontal,
              itemCount: Marketingtopic.length,
              itemBuilder: (context, index) {
                final course = Marketingtopic[index];
                return Padding(
                  padding: EdgeInsets.only(left: 11.w, top: 22.h,right: 14.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Image.network(
                              course.image,
                              width: 142.w,
                              height: 100.h,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Container(
                                margin: EdgeInsets.only( left:20.w,top: 22.h),
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
                      SizedBox(width: 135.w,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.w),
                          child: Text(
                            maxLines: 1, // Restrict text to a single line
                            overflow: TextOverflow.ellipsis,
                            course.name,
                            style: TextStyle(color: Colors.black, fontSize: 14.sp),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: const Icon(
                              Icons.person,
                              color: grey,
                            ),
                          ),
                          SizedBox(
                            width: 63.w,
                            child: Text(
                              course.ownerCourse,   maxLines: 1, // Restrict text to a single line
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: grey, fontSize: 12.sp),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w, top: 6.w),
                            child: Text(
                              "\$70",
                              style: TextStyle(color: teal, fontSize: 16.sp),
                            ),
                          ),
                          Container(
                            height: 20.h,
                            width: 77.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Ligthblue, borderRadius: BorderRadius.circular(22)),
                            margin: EdgeInsets.only(left: 11.w, top: 6.h),
                            child: Text(
                              "Best Deal",
                              style: TextStyle(color: teal, fontSize: 12.sp),
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
