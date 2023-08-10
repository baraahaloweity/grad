import 'package:flutter/material.dart';
class TextDone extends StatelessWidget {
  const TextDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("تم تسجيل معلوماتك بنجاح",
    style: TextStyle(color: Color(0xFF660066),
    fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    );
  }
}
