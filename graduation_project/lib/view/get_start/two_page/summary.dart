import 'package:flutter/material.dart';
class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 20),
      child:Column(
        children: [
          Text("أهلاً بك",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
          Text("طبطة هو تطبيق لتقديم خدمة التشخيص الاولي للامراض النفسية وخدمة الدعم النفسي عن طريق ",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
          Text(" محادث آلي ذكي",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
        ],
      ),

    );
  }
}
