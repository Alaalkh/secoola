import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/Views/Widgets/IconWidget.dart';
import 'package:secoola/Views/Widgets/TextFieldWidget.dart';
import 'package:secoola/theme/Color.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ScreenUtil().setHeight(111),
                      left: ScreenUtil().setWidth(33)),
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenUtil().setSp(22)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 111.h, left: ScreenUtil().setWidth(44)),
                  child: Text(
                    " ✌️  ",
                    style: TextStyle(fontSize: ScreenUtil().setSp(24)),
                  ),
                )
              ],
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(14),
                        left: ScreenUtil().setWidth(44)),
                    child: Text(
                      "Create your account to start your course lessons.",
                      style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                    ),
                  )
                ],
              ),
            ),
            const SocialMediaIcons(),
            SizedBox(
              height: 22.h,
            ),
            const SignButton()
          ],
        ),
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Iconwidget(
                image: Image.asset("assets/search.png"),
                edgeInsets: EdgeInsets.only(left: 33.w, top: 55.h)),
            Iconwidget(
                image: Image.asset("assets/facebook.png"),
                edgeInsets: EdgeInsets.only(left: 11.w, top: 55.h)),
            Iconwidget(
                image: Image.asset("assets/apple-logo.png"),
                edgeInsets: EdgeInsets.only(left: 11.w, top: 55.h))
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 120.w, top: 60.h),
              child: Text(
                "Or sign up with your email",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.sp, color: grey),
              ),
            )
          ],
        )
      ],
    );
  }
}

class SignButton extends StatefulWidget {
  const SignButton({super.key});

  @override
  State<SignButton> createState() => _SignButtonState();
}

class _SignButtonState extends State<SignButton> {
  bool isActive = true;
  bool isActive2 = true;

  late TextEditingController controller = TextEditingController();
  late TextEditingController controller2 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    controller2.dispose();
  }

  @override
  Widget build(BuildContext context) {  final _formKey = GlobalKey<FormState>();

  return Column(
      children: [
        Container(
            width: 335.w,
            height: 56.h,
            margin: EdgeInsets.only(top: 66.h),
            decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(16.r)),
            child: const TextFeildwidget(icon:Icon(Icons.rectangle_rounded,color: teal,size: 17,)
,              hint: 'Your email',obscuretext: false,
            )),
        Container(
            width: 335.w,
            height: 56.h,
            margin: EdgeInsets.only(top: 22.h),
            decoration: BoxDecoration(
                color: white2,
                borderRadius: BorderRadius.circular(22.r)),
            child: const TextFeildwidget(obscuretext: true,
              hint: 'Your password', icon: Icon(Icons.lock,color: teal,size: 17,),
            )),
        SizedBox(
          height: 33.h,
        ),
        Row(
          children: [
            GestureDetector(onTap: (){ if (_formKey.currentState!.validate()) {
              // If the form is valid, display a snackbar. In the real world,
              // you'd often call a server or save the information in a database.
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }},
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(11.r)),
                width: 355.w,
                height: 56.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.Chossetopic);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: teal,
                    ),
                    child: const Text(
                      "Signup",
                      style: TextStyle(color:white2),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 55.w, top: 22.h),
              child: Text(
                "By continuing, you agree to our",
                style: TextStyle(color: grey, fontSize: 14.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.h, left: 3.w),
              child: Text(
                "Terms & ",
                style: TextStyle(color: teal, fontSize: 14.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 88.w),
              child: Text(
                "Conditions and Privacy Policy ",
                style: TextStyle(color: teal, fontSize: 14.sp),
              ),
            )
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.LoginPage);
              },
              child: Container(
                margin: EdgeInsets.only(left: 122.w, top: 55.h),
                child: Text(
                  "I already have an account",
                  style: TextStyle(color: teal, fontSize: 14.sp),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
