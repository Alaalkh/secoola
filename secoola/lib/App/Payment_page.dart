import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola/Models/appRoutes.dart';

class Paymentpage extends StatelessWidget {
  const Paymentpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfffFAFAFA),
      body: Column(
        children: [
          Appbar(),
          item_details(),
          Payment(),
          SizedBox(height: 216.h),
          Checkout()
        ],
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 11),
            height: 52,
            width: 52,
            margin: const EdgeInsets.only(top: 66, left: 22),
            decoration: BoxDecoration(
                color: const Color(0xfffFFFFFF),
                borderRadius: BorderRadius.circular(17)),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 22,
          ),
          Container(
            margin: const EdgeInsets.only(top: 66, left: 44),
            child: const Text(
              "Payment",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class item_details extends StatelessWidget {
  const item_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 36.h),
              child: Text(
                "Items detail",
                style: TextStyle(fontSize: 18.sp),
              ),
            )
          ],
        ),
        SizedBox(
          height: 22.h,
        ),
        Container(
          width: 335.w,
          height: 100.h,
          decoration: BoxDecoration(
              color: const Color(0xfffFFFFFF),
              borderRadius: BorderRadius.circular(15.r)),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22.w),
                height: 68.h,
                width: 68.w,
                decoration: BoxDecoration(
                    color: const Color(0xfff86F2CB),
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 11.w, top: 15.h),
                    child: const Text(
                      "Design Thingking Fundamental",
                      style: TextStyle(fontSize: 14),
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
                          "Dianne Russell",
                          style: TextStyle(
                              color: const Color(0xfffA9AEB2), fontSize: 12.sp),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 11.w, top: 3.h),
                        child: Row(
                          children: [
                            Text(
                              "\$24",
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
                                  color: const Color(0xfffDCF3F5),
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: const Text(
                                "Label",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xfff00A9B7)),
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
        )
      ],
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 36.h),
              child: Text(
                "Payment",
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
            SizedBox(
              width: 188.w,
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 36.h),
              child: Text(
                "Change",
                style: TextStyle(fontSize: 14.sp, color: Color(0xfff00A9B7)),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 13.h),
              width: 335.w,
              height: 80.h,
              decoration: BoxDecoration(
                  color: const Color(0xfffFFFFFF),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30.w),
                      child: Image.asset("assets/mastercard.png")),
                  SizedBox(
                    width: 22.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 6.h),
                        child: Text(
                          "Master Card",
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                      Text(
                        "**** **** **** 8271",
                        style: TextStyle(
                            fontSize: 12.sp, color: Color(0xfffA9AEB2)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 148.h,
      decoration: BoxDecoration(
        color: Color(0xfffFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 11,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
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
                    color: Color(0xfffDCF3F5),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "VEKTORABELAJAR",
                      style:
                          TextStyle(fontSize: 12.sp, color: Color(0xfff00A9B7)),
                    ),
                    Image.asset(
                      "assets/more.png",
                      color: Color(0xfff00A9B7),
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
                        color: Color(0xfff00A9B7),
                      ),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                   Get.toNamed(Routes.PaymentSuccess);
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 100.w, top: 11.h),
                  width: 157.w,
                  height: 52.h,
                  decoration: BoxDecoration(
                      color: Color(0xfff00A9B7),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Text("Checkout",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xffffffff),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
