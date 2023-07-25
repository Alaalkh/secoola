import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Widgets/CourseWidget.dart';
import 'package:secoola/Widgets/DesignTopics.dart';
import 'package:secoola/Widgets/TopicWidget.dart';

import '../Widgets/CategoriesWidget.dart';
import '../Widgets/NotificationWidget.dart';

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
        elevation: 10,
        backgroundColor: const Color(0xfffFAFAFA),
        context: ctx,
        builder: (ctx) => Stack(clipBehavior: Clip.none, children: [
              SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xfffFAFAFA),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  height: 700.h,
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
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 33.w, top: 66.h),
                  child: Text(
                    "Hi, Dimas",
                    style: TextStyle(fontSize: 24.sp, color: Colors.white),
                  )),
              SizedBox(
                width: 22.w,
              ),
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
              Container(
                margin: EdgeInsets.only(top: 66.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: const Color(0xfff008793),
                ),
                height: 40.h,
                width: 40.w,
                child: const Icon(Icons.shopping_cart, color: Colors.white),
              ),
              SizedBox(
                width: 6.w,
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
              Container(
                height: 48.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: const Color(0xfffFFFFFF),
                    borderRadius: BorderRadius.circular(15.r)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for anything",
                    hintStyle: TextStyle(
                        fontSize: 14.sp, color: const Color(0xfffD9DBDE)),
                    prefixIcon: Image.asset(
                      "assets/img_4.png",
                      scale: 5,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              )
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
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Design")],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
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
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Coding")],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
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
      ],
    );
  }
}

class MarketingTopic extends StatelessWidget {
  const MarketingTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [TopicWidgdet(Topictitle: "Marketing")],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
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
              ),
            ],
          ),
        ),
        SizedBox(
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
                title: 'Your payment is success', list: Icon(Icons.more_horiz,color: Color(0xfff00A9B7)),
              ),NotificationWidget(
                image: Icon(Icons.notifications, color: Color(0xfff00A9B7)),
                description: 'Continue you recent course. ',
                title: 'Daily reminder', list: Icon(Icons.more_horiz,color: Color(0xfff00A9B7)),
              ),

            ],
          ),
        ), Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.h, left: 11.w),
              child: Text(
                "Yesterday",
                style: TextStyle(fontSize: 18.sp),
              ),
            )
          ],
        ),const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NotificationWidget(
              image: Icon(Icons.download, color: Color(0xfff00A9B7)),
              description: 'Go toaccount page to download',
              title: 'Download your certificate', list: Icon(Icons.more_horiz,color: Color(0xfff00A9B7)),
            ),NotificationWidget(
              image: Icon(Icons.sunny, color: Color(0xfff00A9B7)),
              description: 'Get the best offer only for you',
              title: 'Summer sale!', list: Icon(Icons.more_horiz,color: Color(0xfff00A9B7)),
            ),

          ],
        ),
      ],
    );
  }
}
