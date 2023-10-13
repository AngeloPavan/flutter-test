import 'package:flutter/material.dart';
import 'package:book_app/pages/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Prima App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Poppins',
        ),
        home: const SignIn());
  }
}
