import 'package:book_app/pages/home_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> login(String username, String password) async {
    try {
      isLoading.value = true;

      final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final userData = jsonDecode(response.body);
        await saveUserData(userData);
        Get.snackbar(
          "Successo",
          "I dati inseriti sono corretti",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.to(HomeScaffold());
      } else {
        Get.snackbar(
          "Errore",
          "I dati inseriti non sono corretti",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Errore",
        "Si è verificato un errore",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> saveUserData(Map<String, dynamic> userData) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('id', userData['id'] ?? "");
    prefs.setString('username', userData['username'] ?? "");
    prefs.setString('email', userData['email'] ?? "");
    prefs.setString('firstName', userData['firstName'] ?? "");
    prefs.setString('lastName', userData['lastName'] ?? "");
    prefs.setString('gender', userData['gender'] ?? "");
    prefs.setString('imageUrl', userData['image'] ?? "");
  }

  Future<void> clearUserData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('id');
    prefs.remove('username');
    prefs.remove('email');
    prefs.remove('firstName');
    prefs.remove('lastName');
    prefs.remove('gender');
    prefs.remove('imageUrl');
  }

  Future<Map<String, dynamic>> getUserData() async {
  final prefs = await SharedPreferences.getInstance();

  return {
    'id': prefs.getInt('id') ?? 0,
    'username': prefs.getString('username') ?? "",
    'email': prefs.getString('email') ?? "",
    'firstName': prefs.getString('firstName') ?? "",
    'lastName': prefs.getString('lastName') ?? "",
    'gender': prefs.getString('gender') ?? "",
    'imageUrl': prefs.getString('imageUrl') ?? "",
  };
}

  // Future<String?> getFirstName() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getString('firstName');
  // }

  // Future<String?> getLastName() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getString('lastName');
  // }

  // Future<String?> getEmail() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getString('email');
  // }

  // Future<String?> getImage() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getString('imageUrl');
  // }
}
