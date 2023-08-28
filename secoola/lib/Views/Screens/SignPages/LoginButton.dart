import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola/appRoutes.dart';
import 'package:secoola/theme/Color.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {


  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  Future<void> signIn() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        UserCredential authResult =  await auth.signInWithEmailAndPassword(
          email: _email,
          password: _password,

        );
        if (authResult.user != null) {
          Get.toNamed(Routes.Chossetopic);
        }
      } catch (e) {
        // Handle sign-up errors.
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 335.w,
                height: 56.h,
                margin: EdgeInsets.only(top: 40.h),
                decoration: BoxDecoration(
                    color: white2, borderRadius: BorderRadius.circular(22.r)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Your email",
                    hintStyle: const TextStyle(
                        fontSize: 14, color: Color(0xFFFA9AEB2)),
                    prefixIcon: const Icon(
                      Icons.email_rounded,
                      color: teal,
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                        color: Color(0xff00A9B7),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email address';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
              ),Container(
                width: 335.w,
                height: 56.h,
                margin: EdgeInsets.only(top: 22.h),
                decoration: BoxDecoration(
                    color: white2, borderRadius: BorderRadius.circular(22.r)),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: teal,
                    ),
                    border: InputBorder.none,
                    hintText: "Your Password",
                    hintStyle: const TextStyle(
                        fontSize: 14, color: Color(0xFFFA9AEB2)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                        color: Color(0xff00A9B7),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Align(alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              Get.toNamed(Routes.resetpassword);
            },
            child: Text(
              "Forget Password?",
              style: TextStyle(color: Ligthgrey, fontSize: 14.sp,),
            ),
          ),
        ),

        Container(margin: EdgeInsets.only(bottom: 11.h,right: 22.w),
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(11)),
          width: 355.w,
          height: 56.h,
          child: Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: ElevatedButton(
              onPressed:  signIn,
              style: ElevatedButton.styleFrom(
                backgroundColor: teal,

              ),
              child: const Text(
                "Login",
                style: TextStyle(color: white),
              ),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Text(
                "By continuing, you agree to our",
                style: TextStyle(color: grey, fontSize: 14.sp),
              ),
            ),
            Text(
              "Terms & ",
              style: TextStyle(color: teal, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 111.h,
          child: Text(
            "Conditions and Privacy Policy ",
            style: TextStyle(color: teal, fontSize: 14.sp),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.SignPage);
          },
          child: Text(
            "I don't have an account",
            style: TextStyle(color: teal, fontSize: 14.sp),
          ),
        )
      ],
    );
  }
}
