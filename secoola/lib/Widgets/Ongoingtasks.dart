import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Ondoingtask extends StatelessWidget {
  const Ondoingtask({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Item1(), Item2(), Item3()],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 22.h,
        ),
        Row(
          children: [
            Container(
              width: 335.w,
              height: 200.h,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(17.r)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, top: 11.h),
                        height: 68.h,
                        width: 68.w,
                        decoration: BoxDecoration(
                            color: const Color(0xfffFFEA7D),
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
                                child:
                                    const Text("Design Thingking Fundamental"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 6.w, top: 6.h),
                                  child: const Icon(
                                    Icons.person,
                                    color: Color(0xfffA9AEB2),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 6.h),
                                child: Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                      color: Color(0xfffA9AEB2),
                                      fontSize: 12.sp),
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
                                    color: const Color(0xfffDCF3F5),
                                    borderRadius: BorderRadius.circular(12.r)),
                                margin: EdgeInsets.only(left: 6.w, top: 6.h),
                                child: Text(
                                  "Label",
                                  style: TextStyle(
                                      color: Color(0xfff00A9B7),
                                      fontSize: 12.sp),
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
                          style: TextStyle(
                              fontSize: 12.sp, color: Color(0xfff707070)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 88.w, top: 11.h),
                        child: Text(
                          "Due Time",
                          style: TextStyle(
                              fontSize: 12.sp, color: Color(0xfff707070)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, top: 11.h),
                        child: Text(
                          "20/29 lesson",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 51.w, top: 11.h),
                        child: Text(
                          "November 2, 2021",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
                    child: LinearPercentIndicator(
                      lineHeight: 14.0,
                      percent: 0.8,
                      backgroundColor: const Color(0xfffF6F6F6),
                      progressColor: const Color(0xfff00CDB1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 22.h,
        ),
        Row(
          children: [
            Container(
              width: 335.w,
              height: 200.h,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(17.r)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, top: 11.h),
                        height: 68.h,
                        width: 68.w,
                        decoration: BoxDecoration(
                            color: const Color(0xfffDCF3F5),
                            borderRadius: BorderRadius.circular(17)),
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
                                child:
                                    const Text("Design Thingking Fundamental"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 6.w, top: 6.h),
                                  child: const Icon(
                                    Icons.person,
                                    color: Color(0xfffA9AEB2),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 6.h),
                                child: Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                      color: Color(0xfffA9AEB2),
                                      fontSize: 12.sp),
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
                                    color: const Color(0xfffDCF3F5),
                                    borderRadius: BorderRadius.circular(12.r)),
                                margin: EdgeInsets.only(left: 6.w, top: 6.h),
                                child: Text(
                                  "Label",
                                  style: TextStyle(
                                      color: Color(0xfff00A9B7),
                                      fontSize: 12.sp),
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
                          style: TextStyle(
                              fontSize: 12.sp, color: Color(0xfff707070)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 88.w, top: 11.h),
                        child: Text(
                          "Due Time",
                          style: TextStyle(
                              fontSize: 12.sp, color: Color(0xfff707070)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, top: 11.h),
                        child: Text(
                          "7/32 lesson",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 51.w, top: 11.h),
                        child: Text(
                          "August 24, 2021",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
                    child: LinearPercentIndicator(
                      lineHeight: 14.0,
                      percent: 0.3,
                      backgroundColor: const Color(0xfffF6F6F6),
                      progressColor: const Color(0xfff00CDB1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 22.h,
        ),
        Row(
          children: [
            Container(
              width: 335.w,
              height: 200.h,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(17.r)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, top: 11.h),
                        height: 68.h,
                        width: 68.w,
                        decoration: BoxDecoration(
                            color: const Color(0xfffFFB099),
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
                                child:
                                    const Text("Design Thingking Fundamental"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 6.w, top: 6.h),
                                  child: const Icon(
                                    Icons.person,
                                    color: Color(0xfffA9AEB2),
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 6.h),
                                child: Text(
                                  "Dianne Russell",
                                  style: TextStyle(
                                      color: Color(0xfffA9AEB2),
                                      fontSize: 12.sp),
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
                                    color: const Color(0xfffDCF3F5),
                                    borderRadius: BorderRadius.circular(12.r)),
                                margin: EdgeInsets.only(left: 6.w, top: 6.h),
                                child: Text(
                                  "Label",
                                  style: TextStyle(
                                      color: Color(0xfff00A9B7),
                                      fontSize: 12.sp),
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
                          style: TextStyle(
                              fontSize: 12.sp, color: Color(0xfff707070)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 88.w, top: 11.h),
                        child: Text(
                          "Due Time",
                          style: TextStyle(
                              fontSize: 12.sp, color: Color(0xfff707070)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, top: 11.h),
                        child: Text(
                          "28/40 lesson",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 51.w, top: 11.h),
                        child: Text(
                          "August 24, 2021",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
                    child: LinearPercentIndicator(
                      lineHeight: 14.0,
                      percent: 0.5,
                      backgroundColor: const Color(0xfffF6F6F6),
                      progressColor: const Color(0xfff00CDB1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
