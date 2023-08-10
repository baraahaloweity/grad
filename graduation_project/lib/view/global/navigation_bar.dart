import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:graduation_project/view/auth/auth-elements/signup-elements/signup_done/signup_done.dart';
import 'package:graduation_project/view/chat_bot/chat_bot_screen.dart';
import 'package:graduation_project/view/home_page/home_page_screen.dart';
import 'package:graduation_project/view/personalitytest/survey_screen.dart';
import 'package:graduation_project/view/settings/settings_screen.dart';

import '../../model/home_view_model.dart';
import '../doctors/doctor_guide_screen.dart';
import '../home_page/home_page.dart';
import '../profile/profile_user.dart';
class UserNavigationBar extends StatelessWidget {

   int index=0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(

      init: HomeViewModel(),
      builder: (controller)=>BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color(0xFF3e2f87)),label: "الصفحة الرئيسة"
        ),
        BottomNavigationBarItem(icon: Image.asset('assets/images/chat.png',width: 22,
          height: 22,
          color: Color(0xFF3e2f87),),label: "محادثة لطيفة",),
        BottomNavigationBarItem(icon: Icon(Icons.people_outline,color: Color(0xFF3e2f87)),label: "دليل الأطباء"),
        BottomNavigationBarItem(icon: Image.asset('assets/images/choose.png',width: 22,
          height: 22,
          color: Color(0xFF3e2f87),),label: "الاختبارات"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Color(0xFF3e2f87)),label: "الملف الشخصي"),

      ],
       backgroundColor: Color(0xFFF3F0FF),
       showUnselectedLabels: true,
      // backgroundColor: Colors.cyan,
        selectedItemColor: Color(0xFF3e2f87),
        //unselectedItemColor: Color(0xFF077BAA),
       // elevation: 0,
      unselectedItemColor: Color(0xFF3e2f87),
        //selectedLabelStyle: TextStyle(fontSize: 15),
        //unselectedLabelStyle: TextStyle(fontSize: 12),
      currentIndex: controller.navigatorValue,
        onTap: (index) {
          if (index == 0) {
            // Navigate to the previous screen
            Get.to(HomePage());
            controller.changeSelectedValue(index);
          }
          if (index == 1) {
            // Navigate to the previous screen
            Get.to(ChatBotScreen());
            controller.changeSelectedValue(index);
          }
          if (index == 2) {
            // Navigate to the previous screen
            Get.to(DoctorGuideScreen());
            controller.changeSelectedValue(index);
          }
          if (index == 3) {
            // Navigate to the previous screen
            Get.to(SurveyScreen());
            controller.changeSelectedValue(index);
          }
          if (index == 4) {
            // Navigate to the previous screen
            Get.to(ProfileUser());
            controller.changeSelectedValue(index);
          }
          else {
            controller.changeSelectedValue(index);
          }
        },

        //elevation: 0,
        //unselectedItemColor: Color(0xFFA8004F),
        //onTap: (index)=>controller.changeSelectedValue(index),

      ),
    );
  }
}
