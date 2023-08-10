import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        //width: double.infinity,

        height: MediaQuery.of(context).size.height*0.13,
       //width:MediaQuery.of(context).size.width*0.7,
        child: Image.asset(
          'assets/images/logo.png',
          //fit: BoxFit.contain,
          //width:MediaQuery.of(context).size.width ,
        ),
      );
  }
}