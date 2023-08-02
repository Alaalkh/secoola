import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Views/Widgets/itemsWidget.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class FillCart extends StatelessWidget {
  const FillCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.h, left: 11.w),
                child: Text(
                  "Your items",
                  style: TextStyle(fontSize: 18.sp),
                ),
              )
            ],
          ),
           const Column(
            children: [
              ItemsWidget(
                checkbox: Icon(
                  Icons.check_box_rounded,
                  color: teal,
                ),
                videocolor: yellow,
                title: 'Design Thingking Fundam...',
                coursetutor: 'Dianne Russell',
                price: '\$ 72',
                Boxcolor: Ligthblue,
                textrecommend: 'Popular',
                Textcolor: teal,
              ),
              ItemsWidget(
                checkbox: Icon(
                  Icons.check_box_outline_blank_rounded,
                  color: grey,
                ),
                videocolor: green,
                title: 'Design Thingking Fundam...',
                coursetutor: 'Dianne Russell',
                price: '\$ 150',
                Boxcolor: Ligthred,
                textrecommend: 'Best Seller',
                Textcolor: Colors.red,
              )
            ],
          ),
          SizedBox(
            height: 168.h,
          ),
          Container(
            width: double.infinity.w,
            height: 120.h,
            decoration: BoxDecoration(
              color: white2,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 11,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 22.w, top: 15.h),
                        child: Text(
                          "Voucher",
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(
                        width: 111.w,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.h),
                        width: 152.w,
                        height: 28.h,
                        decoration: BoxDecoration(
                            color: Ligthblue,
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "VEKTORABELAJAR",
                              style: TextStyle(fontSize: 12.sp, color: teal),
                            ),
                            Image.asset(
                              "assets/more.png",
                              color: teal,
                              scale: 2,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 11.w, top: 17.h),
                            child: Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 22.w, top: 2.h),
                            child: Text(
                              "\$520",
                              style: TextStyle(
                                fontSize: 24.sp,
                                color: teal,
                              ),
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.Paymentpage);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 100.w, top: 11.h),
                          width: 157.w,
                          height: 52.h,
                          decoration: BoxDecoration(
                              color: teal,
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Text("Checkout",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: white2,
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

