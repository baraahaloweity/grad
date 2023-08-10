import 'package:flutter/material.dart';
import 'package:graduation_project/view/home_page/home_elements/chat_bot_button.dart';
import 'package:graduation_project/view/home_page/home_elements/doctors_button.dart';
import 'package:graduation_project/view/home_page/home_elements/personalitytest_button.dart';
class AllButton extends StatelessWidget {
  const AllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 270,
      right: 30,
      child: Column(
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
              PersonalityTestButton(),
              SizedBox(width: 50,),
             DoctorsButton(),
            ],
          ),
          SizedBox(height: 18,),
          ChatBotButton(),
        ],
      ),
    );
  }
}
