import 'package:flutter/material.dart';

class Signout extends StatelessWidget {
  const Signout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Positioned(top:22,
          child: Text(
            "Sign out",
            style: TextStyle(fontSize: 14, color: Colors.red),
          ),
        )
      ],
    );
  }
}