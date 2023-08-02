import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class MyCourse extends StatelessWidget {
  final Color minibox;
  final double degree;
  final String progress;
  final String time;

  const MyCourse(
      {super.key, required this.minibox, required this.degree, required this.progress, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 22.h,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.Continuecourse);
              },
              child: Container(
                width: 335.w,
                height: 243.h,
                decoration: BoxDecoration(
                    color: white2, borderRadius: BorderRadius.circular(17.r)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 22.w, top: 11.h),
                          height: 68.h,
                          width: 68.w,
                          decoration: BoxDecoration(
                              color: minibox,
                              borderRadius: BorderRadius.circular(17.r)),
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 22.h,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 6.w, top: 22.h),
                                  child: const Text(
                                      "Design Thingking Fundamental"),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    margin:
                                    EdgeInsets.only(left: 6.w, top: 6.h),
                                    child: const Icon(
                                      Icons.person,
                                      color: grey,
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 6.h),
                                  child: Text(
                                    "Dianne Russell",
                                    style:
                                    TextStyle(color: grey, fontSize: 12.sp),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20.h,
                                  width: 77.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Ligthblue,
                                      borderRadius:
                                      BorderRadius.circular(12.r)),
                                  margin: EdgeInsets.only(left: 6.w, top: 6.h),
                                  child: Text(
                                    "Label",
                                    style:
                                    TextStyle(color: teal, fontSize: 12.sp),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 22.w, top: 11.h),
                          child: Text(
                            "Progress",
                            style: TextStyle(fontSize: 12.sp, color: darkgrey),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 88.w, top: 11.h),
                          child: Text(
                            "Due Time",
                            style: TextStyle(fontSize: 12.sp, color: darkgrey),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 22.w, top: 11.h),
                          child: Text(
                            progress,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 51.w, top: 11.h),
                          child: Text(
                            time,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: 310.w,
                        height: 13.h,
                        child: LinearPercentIndicator(
                          percent: degree,
                          animation: true,
                          lineHeight: 8,
                          progressColor: Color(0xfff00CDB1),
                          backgroundColor: Color(0xfffF6F6F6),
                          animationDuration: 1000,)
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
