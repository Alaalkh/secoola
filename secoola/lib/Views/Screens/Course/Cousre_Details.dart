import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Models/MainInfo.dart';
import 'package:secoola/Views/Screens/Course/Curriculum.dart';
import 'package:secoola/Views/Screens/Course/Price_Details.dart';
import 'package:secoola/Views/Screens/Course/ReviewTab.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';
import 'package:video_player/video_player.dart';

class CourseDetails extends StatefulWidget {
  final PapularCourses item;

  CourseDetails({required this.item});
  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails>     with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  late TabController tabController = TabController(length: 2, vsync: this);
  late String nameController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://firebasestorage.googleapis.com/v0/b/storage-93a33.appspot.com/o/Videos%2Fdesign.mp4?alt=media&token=15e7a9d0-0a75-4be3-8ece-dc8ca2b2412c'))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();

  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery
        .of(context)
        .size
        .width/2;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(

          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  margin: EdgeInsets.only(left: 25.w, bottom: 55.h),
                  decoration: BoxDecoration(
                      color: const Color(0xfff6bc2a3),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xfffffffff),
                  ),
                ),
                onTap: () {
                  Get.back();
                },
              ),
              GestureDetector(
                onTap: () {
                   Get.toNamed(Routes.CartPage);
                },
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  margin: EdgeInsets.only(left: 222.w),
                  decoration: BoxDecoration(
                      color: const Color(0xfffccbb64),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: white2,
                  ),
                ),
              )
            ],
          ),
          backcolor: Colors.transparent),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                GestureDetector(
                  child: Image.network(
                    widget.item.image,
                    width: 492.7.w,
                    height: 413.h,
                    fit: BoxFit.fill,
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(top: 188.h),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        showCustomVideoPopup(context);
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          _controller.play();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 165.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            color: const Color(0xfffccbb64),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.play_circle,
                              color: white2,
                            ),
                            Text(
                              "Course Review",
                              style: TextStyle(color: white2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),Container(
              margin: EdgeInsets.only(bottom: 11.h),
              width: 375.w,
              height: 956.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.r),
                color: white2,
              ),
              child: Column(
                children: [
                  SizedBox(width: 350.w,
                    child: Padding(
                      padding: EdgeInsets.only( left:6.w,top: 11.h),
                      child: Text(
                        widget.item.name , maxLines:2, // Restrict text to a single line
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 20.sp, color: Colors.black),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, top: 11.h),
                        child: const Icon(
                          Icons.person,
                          color: Color(0xff00A9B7),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 7.w, top: 11.h),
                          child: Text(
                            widget.item.ownerCourse ,
                            style: TextStyle(color: teal, fontSize: 14.sp),
                          )),SizedBox(width:22.w,),
                      Image.asset(
                        "assets/star.png",
                        scale: 33,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "4.8",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 335.w,
                    height: 63.h,
                    child: Text(
                        widget.item.description ,
                      style: TextStyle(color: grey, fontSize: 16.sp),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.w, top: 22.h),
                        child: Text(
                          "Students",
                          style: TextStyle(fontSize: 14.sp, color: grey),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 105.w, top: 22.h),
                        child: Text(
                          "Language",
                          style: TextStyle(fontSize: 14.sp, color: grey),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.w, top: 4.h),
                        child: Text(
                          widget.item.countStudent.toString() ,
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 140.w, top: 4.h),
                        child: Text(
                          widget.item.language
                          ,
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.w, top: 22.h),
                        child: Text(
                          "Last update",
                          style: TextStyle(fontSize: 14.sp, color: grey),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 88.w, top: 22.h),
                        child: Text(
                          "Subtitle",
                          style: TextStyle(fontSize: 14.sp, color: grey),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.w, top: 4.h),
                        child: Text(
                          "Feb 2, 2021",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 77.w, top: 4.h),
                        child: Row(
                          children: [
                            Text(
                              "English and ",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            Text(
                              "5 more",
                              style: TextStyle(fontSize: 16.sp, color: teal),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 33.h,left: 22.w,right: 22.w),

                    decoration: BoxDecoration(
                        color: Ligthgrey2, borderRadius: BorderRadius.circular(17.r)),
                    child: Padding(
                      padding:
                      EdgeInsets.only(top: 5.h,  bottom: 5.h),
                      child: TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.white,
                        indicatorColor: Colors.transparent,
                        dividerColor: Colors.transparent,
                        indicatorWeight: 2,
                        indicator: BoxDecoration(
                          color: teal,
                          borderRadius: BorderRadius.circular(17.r),
                        ),
                        controller: tabController,
                        tabs: [
                          SizedBox(
                            width: width,
                            child: const Tab(
                              text: 'Curriculum',
                            ),
                          ),
                          SizedBox(
                            width: width,
                            child: const Tab(
                              text: 'Review',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: const [Curriculumtab(), ReviewTab()],
                    ),
                  ),
                  const PriceDetails()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void showCustomVideoPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero, // No default padding
          content: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: teal,
              ),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
