import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
        // saveUserDataToLocal(userData);
        Get.snackbar(
          "Successo",
          "I dati inseriti sono corretti",
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          "Errore",
          "I dati inseriti non sono corretti",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Errore",
        "Si è verificato un errore",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
