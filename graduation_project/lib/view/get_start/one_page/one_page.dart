// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:graduation_project/view/get_start/two_page/summary.dart';
import '/view/get_start/one_page/start_button.dart';
import '/view/Get_start/One_page/start_image.dart';
class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      //backgroundColor: Color(0xff3e2f37),
      body: Stack(
        children: [
          StartImage(),
          Summary(),

          StartButton(),
        ],
      ),
    );
  }
}
