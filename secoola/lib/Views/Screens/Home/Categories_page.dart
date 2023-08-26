import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Models/DesignCourse.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
import 'package:secoola/theme/Color.dart';

class CategoriesScreen extends StatelessWidget {
  final dynamic element;

  CategoriesScreen(this.element);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text("Larvel"),
        backcolor: Colors.transparent,
      ),
      body: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 44.0,
            mainAxisExtent: 190,
          ),
          itemCount: 6,
          itemBuilder: (_, i) {
            return Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(
                      "assets/flutter.jpg",
                      width: 142.w,
                      height: 100.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only( left:30.w,top: 22.h),
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
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: const Text("title"),
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 6.h),
                        child: const Icon(
                          Icons.person,
                          color: Color(0xfffA9AEB2),
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Text(
                        "utorname",
                        style: TextStyle(
                            color: const Color(0xfffA9AEB2), fontSize: 12.sp),
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
                            color: const Color(0xfff00A9B7), fontSize: 16.sp),
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
                            color: const Color(0xfff00A9B7), fontSize: 12.sp),
                      ),
                    )
                  ],
                )
              ],
            );
          }),
    );
  }
}
