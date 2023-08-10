import 'package:flutter/material.dart';
import 'package:graduation_project/view/auth/auth-elements/signup-elements/signup_done/button_done.dart';
import 'package:graduation_project/view/auth/auth-elements/signup-elements/signup_done/image_done.dart';
import 'package:graduation_project/view/auth/auth-elements/signup-elements/signup_done/text_done.dart';

import '../../../../global/logo.dart';
class SignupDone extends StatelessWidget {
  const SignupDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Logo(),
          TextDone(),
          Row(
            children: [
              ButtonDone(),
              SizedBox(width:8),
              ImageDone(),

            ],
          ),
        ],
      ),

    );
  }
}
