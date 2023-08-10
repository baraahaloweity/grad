import 'package:flutter/material.dart';

import '../global/logo.dart';
class UserAppBar extends StatelessWidget {

  // final Function onMenuPressed;
  final String name;

  const UserAppBar({super.key, required this.name});
  // UserAppBar({required this.onMenuPressed});
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(

                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: [Color(0xFFF3F0FF), Color(0xFF3e2f87)],
                      //   begin: Alignment.topCenter,
                      //   end: Alignment.bottomCenter,
                      // ),
                      color: Color(0xFF3e2f87),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          right: 340,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Container(
                              height: 40,
                              width: 40,
                              color: Color.fromRGBO(250, 250, 250, 0.5),
                              child: Icon(
                                Icons.notification_add_outlined,
                                size: 30,
                                color: Color(0xFFF3F0FF),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          left: 100,
                          right: 100,
                          child: Container(
                            height: 50,
                            width: 0,
                            //color: Color.fromRGBO(250, 250, 250, 0.1),
                            child: Logo(),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          left: 340,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Container(
                              height: 40,
                              width: 40,
                              color: Color.fromRGBO(250, 250, 250, 0.5),

                              child: IconButton(
                                icon: Icon(Icons.menu_open_rounded,size: 30,color: Color(0xFFF3F0FF)),

                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 120,
                left: 37,
                child: Container(
                  height: 130,
                  width: 330,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff574991),
                        offset: Offset(0, 6),
                        blurRadius: 12,
                        spreadRadius: 6,
                      ),
                    ],
                    color:  Color(0xFFF3F0FF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'اهلا بك',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Color(0xFF3e2f87),
                                  ),
                                ),
                                // Icon(
                                //   Icons.more_horiz,
                                //   color: Colors.white,
                                // ),
                              ],
                            ),
                          ),
                          SizedBox(height: 7),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color:Color(0xFF3e2f87),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                        ],
                      ),
                      SizedBox(width: 40,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 160,
                          color: Color(0xFF3e2f87),
                          child: Text(
                            'حالتي الشعورية:حزين',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color:Colors.white,
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          )
      );
  }
}
