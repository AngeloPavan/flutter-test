// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:book_app/pages/sign_up.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Align(
        // alignment: Alignment.topCenter,
        child: SizedBox(
          width: deviceWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: deviceWidth(context) * 0.95,
                child: const Text(
                  "Welcome\nBack!",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                width: deviceWidth(context) * 0.95,
                child: Text(
                  "Sign in to continue",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
              ),
              Container(
                width: deviceWidth(context) * 0.95,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: deviceWidth(context) * 0.95,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // set border color to black
                      side: const BorderSide(color: Colors.grey),
                      backgroundColor: Colors.white,
                    ),
                    child: Text("Sign In",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: deviceWidth(context) * 0.95,
                child: Text(
                  "- OR -",
                  style: TextStyle(
                      color: Colors.grey[600], fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: deviceWidth(context) * 0.95,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // set border color to black
                      side: const BorderSide(color: Colors.grey),
                      backgroundColor: Colors.white,
                    ),
                    child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ),
              const Spacer(flex: 2),
              WaveWidget(
                config: CustomConfig(colors: [
                  const Color.fromARGB(255, 1, 90, 255),
                  const Color.fromARGB(255, 14, 76, 190)
                ], durations: [
                  50000,
                  30000
                ], heightPercentages: [
                  0.3,
                  0.5,
                ]),
                size: Size(deviceWidth(context), deviceHeight(context) * 0.15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
