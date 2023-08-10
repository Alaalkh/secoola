import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Views/Screens/Home/Categories.dart';
import 'package:secoola/Views/Screens/Home/Coding_Topics.dart';
import 'package:secoola/Views/Screens/Home/Design_Topics.dart';
import 'package:secoola/Views/Screens/Home/Marketing_Topics.dart';
import 'package:secoola/Views/Screens/Home/Notification_BottomSheet.dart';
import 'package:secoola/Views/Screens/Home/Populare_course.dart';
import 'package:secoola/Views/Screens/Transaction/FillCart.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/Views/Widgets/CourseWidget.dart';
import 'package:secoola/Views/Widgets/DesignTopics.dart';
import 'package:secoola/Views/Widgets/TopicWidget.dart';
import 'package:secoola/Views/Widgets/itemsWidget.dart';
import 'package:secoola/theme/Color.dart';

import '../../Widgets/CategoriesWidget.dart';
import '../../Widgets/NotificationWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold( body:
    SingleChildScrollView(
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
    ));

  }
}

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        constraints: BoxConstraints(maxHeight: 655.h),
        elevation: 10,
        backgroundColor: white,
        context: ctx,
        builder: (ctx) => Stack(clipBehavior: Clip.none, children: [
              Container(
                decoration: const BoxDecoration(
                    color: white,
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
                        color: white,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: const Icon(Icons.close),
                  )),
            ]));
  }

  void _Items(BuildContext ctx) {
    showModalBottomSheet(
        constraints: BoxConstraints(maxHeight: 655.h),
        isScrollControlled: true,
        elevation: 10,
        backgroundColor: white,
        context: ctx,
        builder: (ctx) => Stack(clipBehavior: Clip.none, children: [
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: white,
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
                        children: <Widget>[FillCart()],
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
                        color: white,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: const Icon(Icons.close),
                  )),
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: teal,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20.w, top: 66.h),
                  child: Text(
                    "Hi, Dimas",
                    style: TextStyle(fontSize: 24.sp, color: white2),
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
                  _show(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 66.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: darkteal,
                  ),
                  height: 40.h,
                  width: 40.w,
                  child: const Icon(
                    Icons.notifications,
                    color: white2,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _Items(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 66.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: darkteal,
                  ),
                  height: 40.h,
                  width: 40.w,
                  child: const Icon(Icons.shopping_cart, color: white2),
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
                    style: TextStyle(fontSize: 20.sp, color: white2),
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
                    backgroundColor: MaterialStateProperty.all<Color>(white2),
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
                        style: TextStyle(fontSize: 14.sp, color: grey),
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







