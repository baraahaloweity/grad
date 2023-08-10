import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/view/auth/auth-screens/signup_screen.dart';
import '../../Auth/Auth-screens/login_screen.dart';

class TwoButtons extends StatelessWidget {
  const TwoButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 500),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 310,
                height: 80,
                //margin: const EdgeInsets.symmetric(horizontal: 32),
                child: MaterialButton(
                    onPressed: () {
                      Get.to(const SignupScreen());
                    },
                    splashColor: const Color(0xFF3e2f87),
                    color: const Color(0xFF3e2f87),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "إنشاء حساب",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              SizedBox(height: 40,),
              Container(
                width: 310,
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: OutlinedButton(
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      side: BorderSide(color: Color(0xFF3e2f87), width: 2),
                    ),
                    child: const Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF3e2f87),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
