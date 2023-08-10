import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../two_page/two_page.dart';
class StartButton extends StatelessWidget {
  const StartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 700,
      right: 120,
      child: MaterialButton(

        onPressed: (){
          Get.to(const TwoPage());

        },
        splashColor: const Color(0xffA8004F),
        color: const Color(0xff070b2f),
        textColor: Colors.white,
        padding: const EdgeInsets.all(12),
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
        child: const Text("ابدأ \tرحلتك",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

        ),
      ),
    );
  }
}
