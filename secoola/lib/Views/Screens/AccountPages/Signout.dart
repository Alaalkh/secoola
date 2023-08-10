import 'package:flutter/material.dart';

class Signout extends StatelessWidget {
  const Signout({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned(
              child: Text(
                "Sign out",
                style: TextStyle(fontSize: 14, color: Colors.red),
              ),
            ),
          ],
        ),
      ],
    );
  }
}