import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/view/auth/auth-screens/signup_screen.dart';
class TextCreate extends StatelessWidget {
  const TextCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'يمكنك إنشاء حساب',
            style: TextStyle(
                color: Color(0xFF223E68),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              // Navigate to the create account page
              Get.to(SignupScreen());
            },
            child: Text('من هنا',
              style: TextStyle(color: Color(0xffA8004F),fontSize: 16,
                decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,

              ),

            ),
          ),
        ],
      ),
    );
  }
}
