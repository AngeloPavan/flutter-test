// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 14, 76, 190),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          width: deviceWidth(context),
          height: deviceHeight(context),
          child: Column(
            children: [
              AppBar(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  )),
              Container(
                width: deviceWidth(context) * 0.95,
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                width: deviceWidth(context) * 0.95,
                child: Text(
                  "Complete the form and create a free account",
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
                    hintText: "Full Name",
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
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm password",
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
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text("Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
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
                    child: Text("Sign Ip",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
