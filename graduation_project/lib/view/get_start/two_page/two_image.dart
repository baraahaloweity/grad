import 'package:flutter/material.dart';

class TwoImage extends StatelessWidget {
  const TwoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 400,
      child: const Image(
        image: AssetImage('assets/images/13.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }
}
