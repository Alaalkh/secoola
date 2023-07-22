import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/Models/appRoutes.dart';
import 'package:secoola/Models/onboardinModel.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xfffFFFFFF),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(77)),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect:  SlideEffect(
                spacing: 8,
                radius: ScreenUtil().radius(4),
                dotWidth: ScreenUtil().setWidth(111),
                dotHeight: ScreenUtil().setHeight(4),
                dotColor: Color.fromARGB(255, 154, 203, 203),
                activeDotColor: Color(0xfff00A9B7),
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
                return Padding(
                  padding:  EdgeInsets.only(left:ScreenUtil().setWidth(40)),
                  child: Column(
                    children: [
                       SizedBox(height: ScreenUtil().setHeight(88)),
                      Image.asset(
                        contents[i].image,
                        height: 244.h,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.SignPage);
                            },
                            child: const Text(
                              "Skip",
                              style: TextStyle(color: Color(0xfff00A9B7)),
                            )),
                      ),
                      Text(
                        contents[i].title,
                        style:  TextStyle(
                          fontSize: ScreenUtil().setSp(24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                          fontSize: ScreenUtil().setSp(14),
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                      padding:  EdgeInsets.only(top: ScreenUtil().setHeight(5)),
                      decoration: BoxDecoration(
                          color: const Color(0xfff00A9B7),
                          borderRadius: BorderRadius.circular(ScreenUtil().radius(20))),
                      width:  ScreenUtil().setWidth(335),
                      height:  ScreenUtil().setHeight(52),
                      margin:  EdgeInsets.only(left: ScreenUtil().setWidth(30), bottom: ScreenUtil().setHeight(15)),
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
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.LoginPage);
                    },
                    child: Container(
                      padding:  EdgeInsets.only(top: ScreenUtil().setHeight(13)),
                      decoration: BoxDecoration(
                          color: const Color(0xfffFFFFFF),
                          border: Border.all(color: const Color(0xfff00A9B7)),
                          borderRadius: BorderRadius.circular(ScreenUtil().radius(20))),
                      width:  ScreenUtil().setWidth(335),
                      height:  ScreenUtil().setHeight(52),
                      margin:  EdgeInsets.only(left: ScreenUtil().setWidth(30), bottom: ScreenUtil().setHeight(66)),
                      child:  Text(
                        "I already have an account",
                        style:
                            TextStyle(fontSize: ScreenUtil().setSp(16), color: Color(0xfff00A9B7)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
