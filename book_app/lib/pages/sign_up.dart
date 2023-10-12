import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                child: Container(
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
                child: Container(
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Spacer(),
                  SizedBox(
                    width: deviceWidth(context) * 0.8,
                    child: const Text(
                      "Sign Up!",
                      style:
                          TextStyle(fontSize: 42, fontWeight: FontWeight.w900),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: deviceWidth(context) * 0.8,
                    child: const TextField(
                        decoration: InputDecoration(
                      hintText: "Name",
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: const TextField(
                          decoration: InputDecoration(
                        hintText: "Last Name",
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: const TextField(
                          decoration: InputDecoration(
                        hintText: "Email",
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: const TextField(
                          decoration: InputDecoration(
                        hintText: "Password",
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: const TextField(
                          decoration: InputDecoration(
                        hintText: "Confirm password",
                      )),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                      width: deviceWidth(context) * 0.8,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(11)),
                        child: const Text(
                          "Register",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
