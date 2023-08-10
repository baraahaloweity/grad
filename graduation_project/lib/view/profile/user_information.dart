import 'package:flutter/material.dart';
import '../global/logo.dart';
class UserInformation extends StatelessWidget {
  final String name;
  final String email;
  final String age;
  const UserInformation({super.key, required this.name,required this.email,required this.age});
  @override

  Widget build(BuildContext context) {
    return  SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 260,
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   colors: [Color(0xFFF3F0FF), Color(0xFF3e2f87)],
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    // ),
                    color: Color(0xFF3e2f87),
                    // borderRadius: BorderRadius.only(
                    //   bottomLeft: Radius.circular(20),
                    //   bottomRight: Radius.circular(20),
                    // ),
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
                              color: Colors.white,
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
                              icon: Icon(Icons.menu_open_rounded,size: 30,color: Colors.white),

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
              top: 110,
//right: 4,
              child: Container(
                height: 600,
                width: 410,
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xff574991),
                  //     offset: Offset(0, 6),
                  //     blurRadius: 12,
                  //     spreadRadius: 6,
                  //   ),
                  // ],
                  color:  Colors.white,
                  borderRadius: BorderRadius.only(
                        topLeft:  Radius.circular(50),
                    topRight:  Radius.circular(50),
                        ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 50),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 50),
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
                            //SizedBox(height: 25),
                          ],
                        ),
                        SizedBox(width: 100,height: 50,),
                        Container(
                          //height: 50,
                          //alignment: Alignment.topLeft,
                          //margin: EdgeInsets.only(bottom: 470,top: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 5, color: Colors.white),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 100,),
                            ],
                          ),
                          child: Icon(Icons.person, size: 80, color: Colors.grey.shade300,),
                        ),

                      ],
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: 50),
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 10, bottom: 4.0),
                            alignment: Alignment.topRight,
                            child: Text(
                              "معلوماتك",
                              style: TextStyle(
                                color: Color(0xFF660066),
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Card(
                            child: Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      ...ListTile.divideTiles(
                                        color: Colors.grey,
                                        tiles: [
                                          ListTile(
                                            contentPadding: EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 4),
                                            leading: Icon(Icons.my_location,color:Color(0xFF3e2f87),),
                                            title: Text("مكان السكن"),
                                            subtitle: Text("ضاحية الفردوس"),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.email,color:Color(0xFF3e2f87),),
                                            title: Text("البريد الالكتروني"),
                                            subtitle: Text(email),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.phone,color:Color(0xFF3e2f87),),
                                            title: Text("رقم الهاتف"),
                                            subtitle: Text("0000000000"),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.person,color:Color(0xFF3e2f87),),
                                            title: Text("العمر"),
                                            subtitle: Text(age),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        )
    );
  }
}
