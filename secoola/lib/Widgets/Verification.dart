import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerficicationPage extends StatelessWidget {
  const VerficicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFAFAFA),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 11),
                  height: 52,
                  width: 52,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  ),
                  margin: const EdgeInsets.only(top: 66, left: 22),
                  decoration: BoxDecoration(
                      color: const Color(0xfffFFFFFF),
                      borderRadius: BorderRadius.circular(17)),
                ),
                const SizedBox(
                  width: 22,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 66, left: 44),
                  child: const Text(
                    "Verify",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          const titleWidget(),
          const NumberCode(),
          const SizedBox(
            height: 22,
          ),
          const VerfiyButton(),const SizedBox(height: 66,),
          const ResendCode()
        ],
      ),
    );
  }
}

class titleWidget extends StatelessWidget {
  const titleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 66, left: 44),
                child: const Text(
                  "Recovery code",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 66, left: 15),
                child: const Text(
                  "📲 ",
                  style: TextStyle(fontSize: 24),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 14, left: 44),
                child: const Text(
                  "Check your inbox, we have send the Verification   ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 44),
                child: const Text(
                  "code to your email.",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class NumberCode extends StatelessWidget {
  const NumberCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 52,
          width: 69,
          margin: const EdgeInsets.only(left: 22, top: 44),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17.0),
                borderSide: const BorderSide(
                  color: Color(0xff00A9B7),
                ),
              ),
              border: InputBorder.none,
            ),
          ),
          decoration: BoxDecoration(
              color: const Color(0xfffFFFFFF),
              borderRadius: BorderRadius.circular(17)),
        ),
        Container(
          height: 52,
          width: 69,
          margin: const EdgeInsets.only(left: 22, top: 44),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17.0),
                borderSide: const BorderSide(
                  color: Color(0xff00A9B7),
                ),
              ),
              border: InputBorder.none,
            ),
          ),
          decoration: BoxDecoration(
              color: const Color(0xfffFFFFFF),
              borderRadius: BorderRadius.circular(17)),
        ),
        Container(
          height: 52,
          width: 69,
          margin: const EdgeInsets.only(left: 22, top: 44),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17.0),
                borderSide: const BorderSide(
                  color: Color(0xff00A9B7),
                ),
              ),
              border: InputBorder.none,
            ),
          ),
          decoration: BoxDecoration(
              color: const Color(0xfffFFFFFF),
              borderRadius: BorderRadius.circular(17)),
        ),
        Container(
          height: 52,
          width: 69,
          margin: const EdgeInsets.only(left: 22, top: 44),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17.0),
                borderSide: const BorderSide(
                  color: Color(0xff00A9B7),
                ),
              ),
              border: InputBorder.none,
            ),
          ),
          decoration: BoxDecoration(
              color: const Color(0xfffFFFFFF),
              borderRadius: BorderRadius.circular(17)),
        )
      ],
    );
  }
}

class VerfiyButton extends StatelessWidget {
  const VerfiyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
          width: 355,
          height: 56,
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "VerificationPage");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xfff00a9b7),
              ),
              child: const Text(
                "Verify",
                style: TextStyle(color: Color(0xfffffffff)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class ResendCode extends StatelessWidget {
  const ResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(margin: EdgeInsets.only(left: 77),
        child: const Text("Not retrieve any code?",style: TextStyle(color: Color(0xfffA9AEB2),fontSize: 14),),),  Container(
        child:TextButton(onPressed: (){
          
        }, child: Text("Resend code",style: TextStyle(color: Color(0xfff00A9B7),fontSize: 14))))
    ],);
  }
}
