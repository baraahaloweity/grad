import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth_controller.dart';


class ButtonSignup extends StatelessWidget {
  final AuthController auth =Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) {
        return GestureDetector(
          onTap: () async{
            await auth.signupRepo(controller);
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
                  'تأكيد',
                  style: TextStyle(
                    color: Colors.white,
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
