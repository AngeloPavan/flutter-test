import 'package:flutter/material.dart';
import 'package:book_app/pages/sign_up.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  double deviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
          width: deviceWidth(context),
          height: deviceHeight(context),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                widthFactor: 0.7,
                heightFactor: 0.5,
                child: Material(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.blue[300],
                  child: const SizedBox(
                    width: 400,
                    height: 400,
                  ),
                ),
              ),
              Positioned(
                top: deviceHeight(context) * -0.2,
                right: deviceWidth(context) * -0.2,
                child: Material(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.blue[200],
                  child: const SizedBox(
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(flex: 2),
                    SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: const Text(
                        "Welcome\nBack",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: deviceWidth(context) * 0.8,
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 1),
                    SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(11)),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.right,
                        softWrap: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SizedBox(
                        width: deviceWidth(context) * 0.8,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              padding: const EdgeInsets.all(11),
                              backgroundColor: Colors.grey[800]),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(flex: 2),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: WaveWidget(
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
                        size: Size(
                            deviceWidth(context), deviceHeight(context) * 0.15),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
