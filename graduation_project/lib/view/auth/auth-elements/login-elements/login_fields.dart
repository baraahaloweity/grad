
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth_controller.dart';
import '/view/Auth/Auth-elements/Password.dart';
import '/view/Auth/Auth-elements/email.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({Key? key}) : super(key: key);

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  @override
  @override
  Widget build(BuildContext context) {
    // AuthController authController = Get.put(AuthController());
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) => Column(
          children: [
            // Email('اكتب البريد الالكتروني', authController.emailController),
            Email('البريد الالكتروني',
                controller.emailController),
            SizedBox(height: 10,),
            // Password( authController.passwordController)
            Password(controller.passwordController)
          ],
        ),
      ),
    );
  }
}
