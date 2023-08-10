import 'package:flutter/material.dart';
class StartImage extends StatelessWidget {
  const StartImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.height*0.9,
      child:

      const Image(


          image: AssetImage('assets/images/sss.jpg'),
          fit: BoxFit.cover,


        )
    );
  }
}
