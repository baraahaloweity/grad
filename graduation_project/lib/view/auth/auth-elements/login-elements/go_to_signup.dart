import 'package:flutter/material.dart';
class GoToSignup extends StatelessWidget {
  const GoToSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              //Navigator.push(
              //context,
              //MaterialPageRoute(
              //builder: (context) => RegisterScreen()));
            },
            child: const Text(
              'هنا',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF660066),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const Text(' يمكنك انشاء حساب من',
              style: TextStyle(
                  fontSize: 20, color: Color(0xFF223E68))),
        ],
      ),
    );
  }
}
