import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:secoola/Views/Screens/Course/DetailsCourse_Review.dart';
import 'package:secoola/Views/Widgets/Custome_appbar.dart';
import 'package:secoola/theme/Color.dart';
import 'package:video_player/video_player.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
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
                  // Get.toNamed(Routes.)
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
            Container(
                width: 375.w,
                height: 360.h,
                decoration: const BoxDecoration(color: yellow),
                child: Center(
                  child: GestureDetector(onTap: (){
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
                      child: const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                )),
            const DetailsReview()
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
