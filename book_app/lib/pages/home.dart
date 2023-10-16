import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:book_app/controllers/auth_controller.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
  //   return Center(
  //     child: FutureBuilder(
  //         future: authController.getFirstName(),
  //         builder: (context, snapshot) {
  //           if (snapshot.hasData) {
  //             return Center(
  //               child: Text(
  //                 "Benvenuto ${snapshot.data}",
  //                 style: TextStyle(
  //                   fontSize: 24,
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //             );
  //           } else {
  //             return Center(
  //               child: CircularProgressIndicator(),
  //             );
  //           }
  //         }),
  //   );
  // }

  return Text("Ciao!");
  }
}
