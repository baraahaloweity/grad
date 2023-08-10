import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../view/auth/auth-elements/signup-elements/signup_done/signup_done.dart';
import '../view/home_page/home_page.dart';
import '../view/home_page/home_page_screen.dart';
import '/constant/constant.dart';

import '/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  String token = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController  passwordController = TextEditingController();
  TextEditingController  passwordConfController = TextEditingController();
  TextEditingController  nameController = TextEditingController();
  TextEditingController  ageController = TextEditingController();
  FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  Future<String> loginApi(AuthController authController) async {
    Uri url = Uri.parse(LOGINAPI);
    Map<String, String> headers = {

      "Accept": "application/json",
      "Content-Type": "application/json",
    };

    Map<String, dynamic> bodyData = {
      "email": authController.emailController.value.text,
      "password": authController.passwordController.value.text,
    };
    try {
      http.Response loginResponse = await http.post(url, headers:headers, body:jsonEncode(bodyData));
      if (loginResponse.statusCode != 200) {
        throw Exception('Invalid status code: ${loginResponse.statusCode}');
      }
      String responseBody = loginResponse.body;
      if (responseBody.isEmpty) {
        throw Exception('Empty response body');
      }
      Get.to(()=>HomePage());
      return responseBody;
    } catch (error) {
      Get.snackbar(
        'Error',
        'Invalid email or password',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      rethrow;
    }
  }

  Future<String> signupApi(AuthController controller) async {
    final url = Uri.parse(SIGNUPAPI);
    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };

    Map<String, String> bodyData = {
      'email': controller.emailController.value.text,
      'password': controller.passwordController.value.text,
      'confirm_password': controller.passwordConfController.value.text,
      'name': controller.nameController.value.text,
      'age': controller.ageController.value.text,
    };
    try {
      http.Response loginResponse = await http.post(url, headers:headers, body:jsonEncode(bodyData));
      if (loginResponse.statusCode != 200) {
        print(loginResponse.body);
      }
      final responseBody = loginResponse.body;
      if (responseBody==null ||responseBody.isEmpty) {
        throw Exception('Empty response body');
      }
      Get.to(()=>const SignupDone());
      return responseBody;
    }catch (error) {
      rethrow;
    }

  }



  Future<void> loginRepo(AuthController controller) async {
    try {

      String data = await loginApi(controller);
      var userData = json.decode(data);

      controller.token = userData['access_token'];
      print("before decode and the token" + controller.token);

      UserModel user = UserModel.fromMap(userData['client']);
      print("after decode");
      await controller.secureStorage.write(key: 'token', value: controller.token);
      print("after111111111111111111 decode");
      print(userData);
      storage.write('name', user.name);
      storage.write('email', user.email);

    } catch (error) {
      print(error);
    }
  }

  Future<void> signupRepo(AuthController controller) async {
    try {
      String data = await signupApi(controller);
      var userData = json.decode(data);
      print("after decode");
      controller.token = userData['access_token'];
      print("before decode and the token" + controller.token);
      // if (userData != null && userData.containsKey('client')) {
      //   UserModel user = UserModel.fromMap(userData['client']);
      //
      // } else {
      //   print("after decodennn");
      // }
      UserModel user = UserModel.fromMap(userData['client']);

      await controller.secureStorage.write(key: 'token', value: controller.token);
      print(userData);
       storage.write('name', user.name);
       storage.write('email', user.email);
      //storage.write('id', user.id);
      //storage.write('is_active', user.is_active);
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // await prefs.setString('token', controller.token);
      //await prefs.setString('user', json.encode(user.toMap()));
    } catch (error) {
      rethrow;
    }
  }


}
