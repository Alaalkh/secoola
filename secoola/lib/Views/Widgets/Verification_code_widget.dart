import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeTextFeild extends StatelessWidget {
  const CodeTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: 69,
      child: TextField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: Color(0xff00A9B7),
              ),
            ),
            border: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          style: const TextStyle(fontWeight: FontWeight.w800,
              color: Color(0xfff00A9B7), // Set the color of the obscure text
              letterSpacing: 2.0)),
    );
  }
}
