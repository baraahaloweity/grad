// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:graduation_project/view/get_start/two_page/two_buttons.dart';
import '../../global/logo.dart';

 class TwoPage extends StatelessWidget {
   const TwoPage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       body: SafeArea(
         child: Stack(
           children: [
         Column(
         children: [
         Container(
         width: double.infinity,
           height: 400,
           decoration: BoxDecoration(
             // gradient: LinearGradient(
             //   colors: [Color(0xFFF3F0FF), Color(0xFF3e2f87)],
             //   begin: Alignment.topCenter,
             //   end: Alignment.bottomCenter,
             // ),
             color:Color(0xFF3e2f87) ,
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(40),
               bottomRight: Radius.circular(40),

             ),
           ),
           child: Stack(
             children: [

               Positioned(
                 top: 60,
                 left: 150,
                 right: 150,
                 child: Container(
                   color: Colors.white,
                   height: 70,
                   width: 20,
                   //color: Color.fromRGBO(250, 250, 250, 0.1),
                   child: Logo(),
                 ),
               ),
               Positioned(
                 top: 160,
                 left: 50,
                 right: 50,
                 child: Container(

                   //color: Color.fromRGBO(250, 250, 250, 0.1),
                   child:Column(
                     children: [
                       Text("مرحباً",
                           style: TextStyle(
                             fontSize: 22,
                             color: Colors.white,
                           )),
                       Text("إذا كنت تملك حساب على المنصة اضغط على ",
                           style: TextStyle(
                             fontSize: 18,
                             color: Colors.white,
                           )),
                       Text(" تسجيل الدخول",
                           style: TextStyle(
                             fontSize: 18,
                             color: Colors.white,
                           )),
                       Text("أو قم بإنشاء حساب للاستفادة من خدماتنا",
                           style: TextStyle(
                             fontSize: 18,
                             color: Colors.white,
                           )),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ),
         ],
       ),

             TwoButtons()
       ]
     ),
       ),

     );
   }
 }
