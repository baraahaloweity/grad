import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  final TextEditingController controller ;
  const Password(this.controller,{Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.9,
      margin: const EdgeInsets.only(bottom: 20),
      child:  TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        cursorColor: Color(0xFF6A57D5),
        //keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        style: const TextStyle(color:Color(0xFF6A57D5)),
        decoration:  InputDecoration(
          fillColor:   Color(0xFFF3F0FF),
          // Setting the fill color
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color:Color(0xFFF3F0FF),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Color(0xFF6A57D5),
            ),
          ),

          // label: ,
          hintText: ' كلمة السر',
          hintStyle:TextStyle(color:Colors.grey,fontSize: 20),

        ),
      ),
    );
  }
}
