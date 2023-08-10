import 'package:flutter/material.dart';
class ImageDone extends StatelessWidget {
  const ImageDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(right: 120),
      //color: Colors.red,
      alignment: Alignment.topLeft,
        //color: Colors.white,
        //color: Colors.white,
        //height: MediaQuery.of(context).size.height *0.6,
        width: MediaQuery.of(context).size.width*0.74,
        child:

        const Image(

          height: 530,

          image: AssetImage('assets/images/55.png'),
          fit: BoxFit.cover,



        )
    );
  }
}
