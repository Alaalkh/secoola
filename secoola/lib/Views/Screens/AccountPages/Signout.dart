import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola/Services/Firebase_Service.dart';

class Signout extends StatelessWidget {
  const Signout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 55.h, top: 22.h),
          child: GestureDetector(
            onTap: () async {
              await FirebaseService().Signout();
              const SnackBar(
                content: Text('SignOut Successfully'),
              );
            },
            child: const Text(
              "Sign out",
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
