import 'package:flutter/material.dart';

class AgeField extends StatelessWidget {
  final TextEditingController controller ;
  const AgeField(this.controller,{Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.4,
      margin: const EdgeInsets.only(bottom: 20),
      child:  TextFormField(
        controller: controller,
        textAlign: TextAlign.right,
        cursorColor: Color(0xFF6A57D5),
        keyboardType: TextInputType.number,
        //obscureText: true,
        style: const TextStyle(color: Color(0xFF6A57D5)),
        decoration:  InputDecoration(
          fillColor:  Color(0xFFF3F0FF),
          // Setting the fill color
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              color: Color(0xFFF3F0FF),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              color: Color(0xFF6A57D5),
            ),
          ),

          // label: ,
          hintText: ' العمر',
          hintStyle:TextStyle(color: Colors.grey,fontSize: 20),

        ),
      ),
    );
  }
}
