import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
padding: const EdgeInsets.only(top: 40),
      //width: double.infinity,
      height: MediaQuery.of(context).size.height *0.12,
      child: const Text(
          'أهلاً بك',
          style: TextStyle(
              color: Color(0xFF3e2f78),
              fontSize: 35,
              fontWeight: FontWeight.bold,fontFamily:'DGNadeen' ),

        )
    );
  }
}
