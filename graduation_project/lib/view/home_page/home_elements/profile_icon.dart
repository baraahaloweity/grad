import 'package:flutter/material.dart';
import 'package:graduation_project/view/profile/edit_profile/edit_profile.dart';
import 'package:graduation_project/view/profile/edit_profile/elements_edit_profile/change_information.dart';
import 'package:graduation_project/view/profile/profile_user.dart';
import 'package:get/get.dart';
class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: IconButton(
        icon: Image.asset('assets/images/profile.png',color: Color(0xFFA8004F),),
        iconSize: 60,
        splashColor: Colors.blue,
        onPressed: () {
         Get.to(EditProfile());
        },
      )
    );
  }
}
