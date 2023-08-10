import 'package:flutter/material.dart';


class UserNameText extends StatelessWidget {
  final String name;

  const UserNameText({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          const Text('أهلاً بك', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color:Color(0xFFA8004F) ),),
          const SizedBox(height: 2,),
          Text(name,
            textDirection: TextDirection.rtl,
            style: const TextStyle(fontSize:10 , fontWeight: FontWeight.bold,color: Color(0xFF0E2A4B)),),
        ],
      ),
    );
  }
}
