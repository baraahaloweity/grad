import 'package:flutter/material.dart';
import 'package:graduation_project/view/global/drawer.dart';
import '../../controller/home_page_controller.dart';
import '/view/profile/user_information.dart';

import '../global/navigation_bar.dart';
import '/view/global/app_bar.dart';
import 'package:get/get.dart';
class ProfileUser extends StatelessWidget {
  const ProfileUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GetBuilder<HomePageController>(
        init: HomePageController(),
    builder: (controller) =>  MyDrawer(name:'${controller.userProfile.name}')),
      body:

      GetBuilder<HomePageController>(
    init: HomePageController(),
    builder: (controller) => SafeArea(
    child: Stack(
    children: [
          UserInformation(name:'${controller.userProfile.name}',email:'${controller.userProfile.email}',age:'${controller.userProfile.age}'),

        ],
      )
    )
      ),
      bottomNavigationBar: UserNavigationBar(),
    );
  }
}
