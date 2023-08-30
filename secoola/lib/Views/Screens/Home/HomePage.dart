import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Controllers/Controller.dart';
import 'package:secoola/Views/Screens/Home/Categories.dart';
import 'package:secoola/Views/Screens/Home/Coding_Topics.dart';
import 'package:secoola/Views/Screens/Home/Design_Topics.dart';
import 'package:secoola/Views/Screens/Home/Marketing_Topics.dart';
import 'package:secoola/Views/Screens/Home/Notification_BottomSheet.dart';
import 'package:secoola/Views/Screens/Home/Populare_course.dart';
import 'package:secoola/Views/Screens/Transaction/FillCart.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiController apiController = Get.put(ApiController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          backcolor: teal,
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 11.0.w),
                child: Row(
                  children: [
                    Text(
                      "Hi, Dimas  👋",
                      style: TextStyle(fontSize: 24.sp, color: white2),
                    ),
                    SizedBox(
                      width: 77.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        show(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 15.w,
                        ),
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
                        Items(context);
                      },
                      child: Container(
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
              ),
            ],
          ),
        ),
        body: GetBuilder<ApiController>(
            init: ApiController(),
            builder: (controller) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: teal,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      height: 196.h,
                      width: 375.w,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 125.h, bottom: 16.h, left: 22.w, right: 22.w),
                        child: SizedBox(
                          width: 335.w, // Set the desired width
                          height: 48.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routes.Searchdefault);
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(white2),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/img_4.png",
                                  scale: 5,
                                ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    'Search for anything',
                                    style:
                                        TextStyle(fontSize: 14.sp, color: grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    PopularCourse(controller.popularCourses),
                    Categories(),
                    DesignTopic(apiController.designcourses),
                    CodingTopic(apiController.Codingcourses),
                    MarketingTopic(
                      apiController.Marketingcourses,
                    )
                  ],
                ),
              );
            }));
  }
}

void show(BuildContext ctx) {
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
                      color: white, borderRadius: BorderRadius.circular(20.r)),
                  child: const Icon(Icons.close),
                )),
          ]));
}

void Items(BuildContext ctx) {
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
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
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
                      color: white, borderRadius: BorderRadius.circular(20.r)),
                  child: const Icon(Icons.close),
                )),
          ]));
}
