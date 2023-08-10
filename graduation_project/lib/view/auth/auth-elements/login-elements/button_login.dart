import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/controller/auth_controller.dart';

class ButtonLogin extends StatelessWidget {

 //final auth_controller=Get.put(AuthController);
  @override
  Widget build(BuildContext context) {
    final AuthController auth =Get.put(AuthController());
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (controller) {
        return GestureDetector(
          onTap: () async {

            await auth.loginRepo(controller);
            // controller.login();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 55, right: 55),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF3e2f78),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'تسجيل دخول',
                  style: TextStyle(
                    color: Color(0xFFF3F0FF),
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'DGShameless',
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
