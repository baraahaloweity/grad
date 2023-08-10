import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff912a6f),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: const Center(
            child: Text(
              "مستعد للجولة التعريفية؟",
              style: TextStyle(
                  fontSize: 33,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )));
  }
}
