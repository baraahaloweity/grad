import 'package:flutter/material.dart';

import '../../main.dart';
import 'package:get/get.dart';
class SignOutButton extends StatelessWidget {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(left: 50,right: 50),
      child: MaterialButton(
        color: Colors.grey,
        shape: RoundedRectangleBorder(
          //side: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text('تسجيل الخروج',
        style: TextStyle(fontSize: 30),
        ),
        onPressed: () {
          controller.logout();
        },
      ),
    );
  }
}
