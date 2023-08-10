import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/Models/onboardinModel.dart';
import 'package:secoola/theme/Color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  PageController _controller = PageController(initialPage: 0);

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void _nextPage() {
      if (currentIndex < 2) {
        _controller.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
        setState(() {});
      } else {
        Get.toNamed(Routes.SignPage);
      }
    }

    ;
    return Scaffold(
      backgroundColor: const Color(0xfffffffff),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 155.h,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SlideEffect(
                spacing: 8,
                radius: ScreenUtil().radius(4),
                dotWidth: ScreenUtil().setWidth(111),
                dotHeight: ScreenUtil().setHeight(4),
                dotColor: const Color.fromARGB(255, 154, 203, 203),
                activeDotColor: teal,
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: ScreenUtil().setHeight(200),
                          child: Image.asset(
                            contents[i].image,
                            width: 300.w,
                            height: 180.h,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: teal, // Text color
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10), // Padding
                            ),
                            onPressed: _nextPage,
                            child: Text(currentIndex < 2 ? 'Next' : 'Continue'),
                          ),
                        ),
                        Text(
                          contents[i].title,
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(24),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: ScreenUtil().setSp(14),
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: teal,
                  borderRadius: BorderRadius.circular(ScreenUtil().radius(20))),
              width: ScreenUtil().setWidth(335),
              height: ScreenUtil().setHeight(52),
              margin: EdgeInsets.only(
                  right: 22.w,
                  left: ScreenUtil().setWidth(22),
                  bottom: ScreenUtil().setHeight(15)),
              child: TextButton(
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Get.toNamed(Routes.SignPage);
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                child: const Text(
                  "Let's get started",
                  style: TextStyle(color: Color(0xffffffff)),
                ),
              )),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.LoginPage);
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xfffffffff),
                  border: Border.all(color: teal),
                  borderRadius: BorderRadius.circular(ScreenUtil().radius(20))),
              width: ScreenUtil().setWidth(335),
              height: ScreenUtil().setHeight(52),
              margin: EdgeInsets.only(
                  right: 22.w,
                  left: ScreenUtil().setWidth(22),
                  bottom: ScreenUtil().setHeight(33)),
              child: Text(
                "I already have an account",
                style: TextStyle(fontSize: ScreenUtil().setSp(16), color: teal),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
