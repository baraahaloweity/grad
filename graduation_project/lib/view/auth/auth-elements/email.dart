import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const Email(this.hint, this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        cursorColor: Color(0xFF6A57D5),
        keyboardType: TextInputType.emailAddress,
        //obscureText: true,
        style: const TextStyle(color: Color(0xFF6A57D5)),
        decoration: InputDecoration(
          fillColor: Color(0xFFF3F0FF), // Light purple background
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xFFF3F0FF),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Color(0xFF6A57D5),
            ),
          ),
          hintText: 'البريد الإلكتروني', // Arabic text
          hintStyle: TextStyle(color: Color(0xFFA9A9A9), fontSize: 20), // Light gray hint
        ),
      ),
    );
  }
}
