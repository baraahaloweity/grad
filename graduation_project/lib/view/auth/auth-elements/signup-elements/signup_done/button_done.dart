import 'package:flutter/material.dart';
import 'package:graduation_project/view/Auth/Auth-screens/login_screen.dart';
import 'package:get/get.dart';
class ButtonDone extends StatelessWidget {
  const ButtonDone({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        //width: MediaQuery.of(context).size.height*0.5,

        alignment: Alignment.bottomRight,
        margin: const EdgeInsets.only( right: 2),
        child: MaterialButton(

          color: const Color(0xFF660066),
          shape: RoundedRectangleBorder(
            //side: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text('عودة',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,
              fontFamily: 'DGShameless',color: Colors.white),
          ),
          onPressed: () {
            Get.to(LoginScreen());
          },
        ),
      );
  }
}
