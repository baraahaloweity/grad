import 'package:flutter/material.dart';

import '../auth-elements/signup-elements/button_signup.dart';
import '/view/auth/auth-elements/signup-elements/signup_fields.dart';

import '../../global/logo.dart';
import '../Auth-elements/header.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xffFCFAFC),
        body:SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Header(),
                SizedBox(height: 10,),
                Logo(),
                SizedBox(height: 25,),
                const SignupFields(),
                SizedBox(height: 10,),
                 ButtonSignup(),
              ],
            ),
          ),
        )
    );
  }
}
