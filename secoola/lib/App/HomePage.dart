import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Widgets/CourseWidget.dart';
import 'package:secoola/Widgets/DesignTopics.dart';
import 'package:secoola/Widgets/TopicWidget.dart';

import '../Widgets/CategoriesWidget.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Color(0xfff00A9B7),
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
                  margin:  EdgeInsets.only(left: 33.w, top: 66.h),
                  child:  Text(
                    "Hi, Dimas",
                    style: TextStyle(fontSize: 24.sp, color: Colors.white),
                  )),
               SizedBox(
                width: 22.w,
              ),
              Container(
                margin:  EdgeInsets.only(top: 66.h),
                child:  Text(
                  "👋   ",
                  style: TextStyle(fontSize: 24.sp),
                ),
              ),
               SizedBox(
                width: 77.w,
              ),
              Container(
                margin:  EdgeInsets.only(top: 66.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: const Color(0xfff008793),
                ),
                height: 40.h,
                width: 40.w,
              ),
               SizedBox(
                width: 6.w,
              ),
              Container(
                margin:  EdgeInsets.only(top: 66.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: const Color(0xfff008793),
                ),
                height: 40.h,
                width: 40.w,
              )
            ],
          ),
          Row(
            children: [
              Container(
                  margin:  EdgeInsets.only(left: 33.w),
                  child:  Text(
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
                    hintStyle:  TextStyle(
                        fontSize: 14.sp, color: Color(0xfffD9DBDE)),
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
              margin:  EdgeInsets.only(left: 22.w, top: 22.h),
              child:  Text(
                "Popular course",
                style: TextStyle(color: Colors.black, fontSize: 18.sp),
              ),
            ),
             SizedBox(
              width: 144.w,
            ),
            Container(
              margin:  EdgeInsets.only(left: 22.w, top: 22.h),
              child:  Text(
                "See All",
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14.sp),
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
              margin: const EdgeInsets.only(left: 22, top: 22),
              child: const Text(
                "Categories",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            const SizedBox(
              width: 180,
            ),
            Container(
              margin: const EdgeInsets.only(left: 22, top: 22),
              child: const Text(
                "See All",
                style: TextStyle(color: Color(0xfff00A9B7), fontSize: 14),
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
        ),SizedBox(height: 33,)
      ],
    );
  }
}
