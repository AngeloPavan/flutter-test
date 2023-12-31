// ignore_for_file: sized_box_for_whitespace
import 'package:book_app/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:book_app/controllers/auth_controller.dart' as authcontroller;

/*
  !DATI DI TEST!

  username: 'kminchelle',
  password: '0lelplR',
*/

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    Get.put(authcontroller.AuthController());
    _passwordVisible = false;
  }

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          icon: Icon(_passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off))),
                  obscureText: !_passwordVisible,
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
                    onPressed: () {
                      Get.find<authcontroller.AuthController>()
                          .login(emailController.text, passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(color: Colors.grey),
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text("Sign In",
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
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
