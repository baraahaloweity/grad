import 'package:flutter/material.dart';
import 'package:graduation_project/felings/histogram_felings.dart';
import 'package:graduation_project/view/home_page/home_page_screen.dart';
import 'package:graduation_project/view/profile/edit_profile/edit_profile.dart';
import 'package:graduation_project/view/profile/new_profile.dart';
import 'package:graduation_project/view/profile/profile_user.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../home_page/home_page.dart';
import '../settings/settings_screen.dart';
import '../test.dart';
class MyDrawer extends StatelessWidget {
  final String name;
  final HomeController controller = Get.find();
  MyDrawer({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        //padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [Color(0xFFF3F0FF), Color(0xFF3e2f87)],
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              // ),
              color:  Color(0xFF3e2f87),
            ),
            child: DrawerHeader(
              decoration: BoxDecoration(

              ),
              child: Container(
                //alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width*0.5,
                //height: MediaQuery.of(context).size.height*0.8,
                decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [Color(0xFFF3F0FF), Color(0xFF3e2f87)],
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    // ),
                    color:  Color(0xFF3e2f87),
                    borderRadius: BorderRadius.circular(6)// Set the background color
                ),
                padding: EdgeInsets.all(15),
                child: InkWell(
                  onTap: () {
                   Get.to(ProfileUser());
                  },
                  child:Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.person, size: 60, color: Colors.grey.shade300,),
                            radius: 40,
                            //backgroundImage: NetworkImage(controller.photoURL.value),

                          ),
                          SizedBox(width: 8),
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home,size: 30,color:Color(0xFF3e2f87) ,),
            title: Text('الصفحة الرئيسية',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3e2f87)
              ),),
            onTap: () {
              Get.to(HomePage());
            },
          ),
          ListTile(
            leading: Icon(Icons.settings,size: 30,color:Color(0xFF3e2f87)),
            title: Text('تعديل الملف الشخصي',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color:Color(0xFF3e2f87)
            )),
            onTap: () {
              Get.to(EditProfile());
            },
          ),
          ListTile(
            leading: Icon(Icons.settings,size: 30,color:Color(0xFF3e2f87)),
            title: Text('المشاعر',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color:Color(0xFF3e2f87)
            )),
            onTap: () {
              Get.to(() => HistogramScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.open_in_new,size: 30,color:Color(0xFF3e2f87)),
            title: Text('تسجيل الخروج',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color:Color(0xFF3e2f87)
            )),
            onTap: () {
              controller.logout();
            },
          ),
        ],
      ),
    );
  }
}
