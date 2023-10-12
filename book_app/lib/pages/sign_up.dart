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
        body: SizedBox(
          width: deviceWidth(context),
          height: deviceHeight(context),
          child: Stack(
            children: [
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
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: deviceHeight(context),
                  child: Center(
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Spacer(flex: 2),
                            SizedBox(
                              width: deviceWidth(context) * 0.8,
                              child: const Text(
                                "Sign Up!",
                                style: TextStyle(
                                    fontSize: 42, fontWeight: FontWeight.w900),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              // color: Colors.green,
                              padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: const Border(
                                  bottom: BorderSide(
                                    color: Color.fromARGB(30, 0, 0, 0),
                                    width: 1,
                                  ),
                                  top: BorderSide(
                                    color: Color.fromARGB(30, 0, 0, 0),
                                    width: 1,
                                  ),
                                  left: BorderSide(
                                    color: Color.fromARGB(30, 0, 0, 0),
                                    width: 1,
                                  ),
                                  right: BorderSide(
                                    color: Color.fromARGB(30, 0, 0, 0),
                                    width: 1,
                                  ),
                                ),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: deviceWidth(context) * 0.8,
                                    child: const TextField(
                                        decoration: InputDecoration(
                                      hintText: "Name",
                                    )),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: SizedBox(
                                      width: deviceWidth(context) * 0.8,
                                      child: const TextField(
                                          decoration: InputDecoration(
                                        hintText: "Last Name",
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: SizedBox(
                                      width: deviceWidth(context) * 0.8,
                                      child: const TextField(
                                          decoration: InputDecoration(
                                        hintText: "Email",
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: SizedBox(
                                      width: deviceWidth(context) * 0.8,
                                      child: const TextField(
                                          decoration: InputDecoration(
                                        hintText: "Password",
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: SizedBox(
                                      width: deviceWidth(context) * 0.8,
                                      child: const TextField(
                                          decoration: InputDecoration(
                                        hintText: "Confirm password",
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(flex: 1),
                            SizedBox(
                              width: deviceWidth(context) * 0.8,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    padding: const EdgeInsets.all(11)),
                                child: const Text(
                                  "Register",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                            const Spacer(flex: 2),
                          ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
