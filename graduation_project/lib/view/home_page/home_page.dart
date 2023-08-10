import 'package:flutter/material.dart';
import 'package:graduation_project/view/global/app_bar.dart';
import 'package:graduation_project/view/home_page/home_elements/all_button.dart';
import 'package:graduation_project/view/home_page/home_elements/doctors_button.dart';
import 'package:graduation_project/view/home_page/home_elements/personalitytest_button.dart';

import '../../controller/home_page_controller.dart';
import '../chat_bot/chat_bot_screen.dart';
import '../global/drawer.dart';
import '../global/logo.dart';
import '../global/navigation_bar.dart';
import 'package:get/get.dart';
import 'home_elements/chat_bot_button.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:GetBuilder<HomePageController>(
          init: HomePageController(),
          builder: (controller) =>MyDrawer(name:'${controller.userProfile.name}')),
      body:GetBuilder<HomePageController>(
    init: HomePageController(),
    builder: (controller) => SafeArea(
      child: Stack(
      children: [
        UserAppBar(name:'${controller.userProfile.name}'),
        AllButton(),
      ],
    )
      )
      ),
      bottomNavigationBar: UserNavigationBar(),

    );
  }
}
