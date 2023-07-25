import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsWidget extends StatelessWidget {
  final Icon checkbox;
  final Color videocolor;
  final String title;
  final String coursetutor;
  final String price;
  final Color Boxcolor;
  final String textrecommend;
  final Color Textcolor;

  const ItemsWidget(
      {super.key,
      required this.checkbox,
      required this.videocolor,
      required this.title,
      required this.coursetutor,
      required this.price,
      required this.Boxcolor,
      required this.textrecommend,
      required this.Textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17.h),
      height: 140.h,
      width: 335.w,
      decoration: BoxDecoration(
          color: const Color(0xfffFFFFFF),
          borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 22.w, top: 50.h),
                child: checkbox,
              ),
              Container(
                margin: EdgeInsets.only(left: 13.w, top: 25.h),
                height: 68.h,
                width: 68.w,
                decoration: BoxDecoration(
                    color: videocolor,
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 11.w, top: 22.h),
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 6.h, left: 4.w),
                          child: const Icon(
                            Icons.person,
                            color: Color(0xfffA9AEB2),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 6.h),
                        child: Text(
                          coursetutor,
                          style: TextStyle(
                              color: const Color(0xfffA9AEB2), fontSize: 12.sp),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 11.w, top: 11.h),
                        child: Row(
                          children: [
                            Text(
                              price,
                              style: TextStyle(
                                  color: const Color(0xfff00A9B7),
                                  fontSize: 16.sp),
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 20.h,
                              width: 68.w,
                              decoration: BoxDecoration(
                                  color: Boxcolor,
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Text(
                                textrecommend,
                                style:
                                    TextStyle(fontSize: 12, color: Textcolor),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 11.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: const Text(
                  "Remove",
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
              Container(
                child: const Text(
                  "Move to wishlist",
                  style: TextStyle(color: Color(0xfff00A9B7), fontSize: 12),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
