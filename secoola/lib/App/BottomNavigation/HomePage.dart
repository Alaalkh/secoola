import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Models/appRoutes.dart';
import 'package:secoola/Widgets/CourseWidget.dart';
import 'package:secoola/Widgets/DesignTopics.dart';
import 'package:secoola/Widgets/TopicWidget.dart';
import 'package:secoola/Widgets/itemsWidget.dart';

import '../../Widgets/CategoriesWidget.dart';
import '../../Widgets/NotificationWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Appbar(),
          PopularCourse(),
          Categories(),
          DesignTopic(),
          CodingTopic(),
          MarketingTopic()
        ],
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        constraints: BoxConstraints(maxHeight: 622.h),
        elevation: 10,
        backgroundColor: const Color(0xfffFAFAFA),
        context: ctx,
        builder: (ctx) => Stack(clipBehavior: Clip.none, children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xfffFAFAFA),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                // height: 900.h,
                width: double.infinity.w,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[BottomSheet_Content()],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: -80.h,
                  right: 12.w,
                  child: Container(
                    height: 52.h,
                    width: 52.w,
                    decoration: BoxDecoration(
                        color: const Color(0xfffFAFAFA),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: const Icon(Icons.close),
                  )),
            ]));
  }

  void _Items(BuildContext ctx) {
    showModalBottomSheet(
        constraints: BoxConstraints(maxHeight: 622.h),
        isScrollControlled: true,
        elevation: 10,
        backgroundColor: const Color(0xfffFAFAFA),
        context: ctx,
        builder: (ctx) => Stack(clipBehavior: Clip.none, children: [
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xfffFAFAFA),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30.r))),
                  height: 697.h,
                  width: double.infinity.w,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[BottomItem()],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: -80.h,
                  right: 12.w,
                  child: Container(
                    height: 52.h,
                    width: 52.w,
                    decoration: BoxDecoration(
                        color: const Color(0xfffFAFAFA),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: const Icon(Icons.close),
                  )),
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff00A9B7),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28.r),
          bottomRight: Radius.circular(28.r),
        ),
      ),
      height: 222.h,
      width: double.infinity,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20.w, top: 66.h),
                  child: Text(
                    "Hi, Dimas",
                    style: TextStyle(fontSize: 24.sp, color: Colors.white),
                  )),

              Container(
                margin: EdgeInsets.only(top: 66.h),
                child: Text(
                  "👋   ",
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
              SizedBox(
                width: 77.w,
              ),
              GestureDetector(
                onTap: () {
                  _Items(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 66.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: const Color(0xfff008793),
                  ),
                  height: 40.h,
                  width: 40.w,
                  child: const Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),

              GestureDetector(
                onTap: () {
                  _show(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 66.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: const Color(0xfff008793),
                  ),
                  height: 40.h,
                  width: 40.w,
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 33.w),
                  child: Text(
                    "Let's start learning!",
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 22.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 335.w, // Set the desired width
                height: 48.h,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.Searchdefault);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xfffFFFFF)),
                    // Set the desired background color

                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    // You can add more customizations here if needed, like colors, padding, etc.
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // Center the icon and text horizontally
                    children: [
                      Image.asset(
                        "assets/img_4.png",
                        scale: 5,
                      ),
                      // Replace 'Icons.star' with the desired icon
                      const SizedBox(width: 8),
                      // Add some space between the icon and text
                      Text(
                        'Search for anything',
                        style: TextStyle(
                            fontSize: 14.sp, color: const Color(0xfffADB2B6)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PopularCourse extends StatelessWidget {
  const PopularCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 22.h),
              child: Text(
                "Popular course",
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              width: 144.w,
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 22.h),
              child: Text(
                "See All",
                style:
                    TextStyle(color: const Color(0xfff00A9B7), fontSize: 14.sp),
              ),
            )
          ],
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseWidget(
                boxcolor: Color(0xfffFFEA7D),
                titletext: "Design Thingking Fundamental",
                coursetutor: "Robert Fox",
                price: "\$ 150",
                colorText: Colors.red,
                recommend: "Best Seller",
                background: Color(0xfffFCE2EA),
              ),
              CourseWidget(
                boxcolor: Color(0xfffA3CCDE),
                titletext: "Flutter Class - Advance Program",
                coursetutor: "Wade Warren",
                price: "\$ 24",
                colorText: Color(0xfff00A9B7),
                recommend: "Recomended",
                background: Color(0xfffDCF3F5),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 22.h),
              child: Text(
                "Categories",
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
            ),
            SizedBox(
              width: 180.w,
            ),
            Container(
              margin: EdgeInsets.only(left: 22.w, top: 22.h),
              child: Text(
                "See All",
                style:
                    TextStyle(color: const Color(0xfff00A9B7), fontSize: 14.sp),
              ),
            )
          ],
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesWidget(
                Category: 'Art',
                image: "assets/mona-lisa.png",
              ),
              CategoriesWidget(
                Category: 'Coding',
                image: "assets/laptop.png",
              ),
              CategoriesWidget(
                Category: 'Design',
                image: "assets/design.png",
              ),
              CategoriesWidget(
                Category: 'Health',
                image: "assets/healthcare.png",
              )
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesWidget(
                Category: 'Business',
                image: "assets/business.png",
              ),
              CategoriesWidget(
                Category: 'Marketing',
                image: "assets/laptop.png",
              ),
              CategoriesWidget(
                Category: 'LifeStyle',
                image: "assets/life.png",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class DesignTopic extends StatelessWidget {
  const DesignTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Design")],
        ),
        Container(
          height: 226.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              DesignTopics(
                boxcolor: Color(0xfffFFEA7D),
                titletext: "Design Thingking F...",
                coursetutor: "Dianne Russell",
                price: "\$ 75",
                colorText: Color(0xfff00A9B7),
                recommend: "Best Deal",
                background: Color(0xfffDCF3F5),
              ),
              DesignTopics(
                boxcolor: Color(0xfffFFB099),
                titletext: "Figma Prototyping 1...",
                coursetutor: "Jacob Jones",
                price: "\$ 32",
                colorText: Color(0xfff00A9B7),
                recommend: "Best Deal",
                background: Color(0xfffDCF3F5),
              ),
              DesignTopics(
                boxcolor: Color(0xfffFCE2EA),
                titletext: "UI UX Design Essentials",
                coursetutor: "Jacob Jones",
                price: "\$ 83",
                colorText: Color(0xfff00A9B7),
                recommend: "Best Deal",
                background: Color(0xfffDCF3F5),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CodingTopic extends StatelessWidget {
  const CodingTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Coding")],
        ),
        Container(
          height: 226.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              DesignTopics(
                boxcolor: Color(0xfffD0B2FF),
                titletext: "Flutter Class - Adv...",
                coursetutor: "Cameron Williamson",
                price: "\$ 97",
                colorText: Color(0xfff00A9B7),
                recommend: "Best Deal",
                background: Color(0xfffDCF3F5),
              ),
              DesignTopics(
                boxcolor: Color(0xfffFFEA7D),
                titletext: "Python Class - Adv...",
                coursetutor: "Brooklyn Simmons",
                price: "\$ 66",
                colorText: Color(0xfff00A9B7),
                recommend: "Best Deal",
                background: Color(0xfffDCF3F5),
              ),
              DesignTopics(
                boxcolor: Color(0xfff00A9B7),
                titletext: "Swift Class - Adv...",
                coursetutor: "Cameron Williamson",
                price: "\$ 41",
                colorText: Color(0xfff00A9B7),
                recommend: "Label",
                background: Color(0xfffDCF3F5),
              ),
            ],
          ),
        )
        // child: Row(
        //   children: [

        //   ],
        // ),
      ],
    );
  }
}

class MarketingTopic extends StatelessWidget {
  const MarketingTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Marketing")],
        ), Container(
          height: 226.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
            DesignTopics(
                      boxcolor: Color(0xfffFFB099),
                      titletext: "Digital Marketing S...",
                      coursetutor: "Esther Howard",
                      price: "\$ 49",
                      colorText: Color(0xfffFF6666),
                      recommend: "Hot Deals",
                      background: Color(0xfffFCE2EA),
                    ),
                    DesignTopics(
                      boxcolor: Color(0xfff86F2CB),
                      titletext: "Personal Branding F...",
                      coursetutor: "Savannah Nguyen",
                      price: "\$ 56",
                      colorText: Color(0xfff00A9B7),
                      recommend: "Most Sold",
                      background: Color(0xfffDCF3F5),
                    ),
                    DesignTopics(
                      boxcolor: Color(0xfff00A9B7),
                      titletext: "Neuromarketing&Marketing ",
                      coursetutor: "Arlene McCoy",
                      price: "\$ 41",
                      colorText: Color(0xfff00A9B7),
                      recommend: "Best Deal",
                      background: Color(0xfffDCF3F5),
                    )
            ],
          ),
        )
      ,
        const SizedBox(
          height: 33,
        )
      ],
    );
  }
}

class BottomSheet_Content extends StatelessWidget {
  const BottomSheet_Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 22.h, left: 11.w),
              child: Text(
                "Notification",
                style: TextStyle(fontSize: 24.sp),
              ),
            ),
            SizedBox(
              width: 22.w,
            ),
            Container(
              margin: EdgeInsets.only(top: 22.h, left: 11.w),
              child: Text(
                "👋   ",
                style: TextStyle(fontSize: 24.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h, left: 11.w),
              child: Text(
                "Today",
                style: TextStyle(fontSize: 18.sp),
              ),
            )
          ],
        ),
        const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NotificationWidget(
                image: Icon(Icons.rectangle_rounded, color: Color(0xfff00A9B7)),
                description: 'Start your course now.',
                title: 'Your payment is success',
                list: Icon(Icons.more_horiz, color: Color(0xfff00A9B7)),
              ),
              NotificationWidget(
                image: Icon(Icons.notifications, color: Color(0xfff00A9B7)),
                description: 'Continue you recent course. ',
                title: 'Daily reminder',
                list: Icon(Icons.more_horiz, color: Color(0xfff00A9B7)),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h, left: 11.w),
              child: Text(
                "Yesterday",
                style: TextStyle(fontSize: 18.sp),
              ),
            )
          ],
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NotificationWidget(
              image: Icon(Icons.download, color: Color(0xfff00A9B7)),
              description: 'Go toaccount page to download',
              title: 'Download your certificate',
              list: Icon(Icons.more_horiz, color: Color(0xfff00A9B7)),
            ),
            NotificationWidget(
              image: Icon(Icons.sunny, color: Color(0xfff00A9B7)),
              description: 'Get the best offer only for you',
              title: 'Summer sale!',
              list: Icon(Icons.more_horiz, color: Color(0xfff00A9B7)),
            ),
          ],
        ),
      ],
    );
  }
}

class BottomItem extends StatelessWidget {
  const BottomItem({super.key});

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
                  color: Color(0xfff00A9B7),
                ),
                videocolor: Color(0xfffFFEA7D),
                title: 'Design Thingking Fundam...',
                coursetutor: 'Dianne Russell',
                price: '\$ 72',
                Boxcolor: Color(0xfffDCF3F5),
                textrecommend: 'Popular',
                Textcolor: Color(0xfff00A9B7),
              ),
              ItemsWidget(
                checkbox: Icon(
                  Icons.check_box_outline_blank_rounded,
                  color: Color(0xfffE4E4E4),
                ),
                videocolor: Color(0xfff86F2CB),
                title: 'Design Thingking Fundam...',
                coursetutor: 'Dianne Russell',
                price: '\$ 150',
                Boxcolor: Color(0xfffFCE2EA),
                textrecommend: 'Best Seller',
                Textcolor: Colors.red,
              )
            ],
          ),
          SizedBox(
            height: 160.h,
          ),
          Container(
            width: double.infinity,
            height: 120.h,
            decoration: BoxDecoration(
              color: const Color(0xfffFFFFF),
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
                            color: const Color(0xfffDCF3F5),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "VEKTORABELAJAR",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xfff00A9B7)),
                            ),
                            Image.asset(
                              "assets/more.png",
                              color: const Color(0xfff00A9B7),
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
                                color: const Color(0xfff00A9B7),
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
                              color: const Color(0xfff00A9B7),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Text("Checkout",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: const Color(0xffffffff),
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
