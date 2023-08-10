import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_project/view/personalitytest/survey_screen.dart';
class PersonalityTestButton extends StatelessWidget {
  const PersonalityTestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
         Get.to(SurveyScreen());
       },
       child: Container(
         //color: Colors.black,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(20),
           boxShadow: [
             BoxShadow(
               color: Color(0xFFD4CFE8),
               spreadRadius: 5,
               blurRadius: 10,
               offset: Offset(0, 3),
             ),
           ],
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

           children: [
             Container(
               width: MediaQuery.of(context).size.width * 0.35,
               height: MediaQuery.of(context).size.height * 0.2,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.black.withOpacity(0.2),
                //       spreadRadius: 5,
                //       blurRadius: 10,
                //       offset: Offset(0, 3),
                //     ),
                //   ],
                // ),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: Image.asset(
                   'assets/images/29.jpg', // Replace with your image path
                   fit: BoxFit.cover, // Adjust the fit as needed
                 ),
               ),
             ),
             SizedBox(height: 8), // Space between image and text
             Text(
               'اختبارات ومقاييس',
               style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.bold,
                 color:  Color(0xff574991),
               ),
             ),
           ],
         ),
       ),
     );



  }
}
