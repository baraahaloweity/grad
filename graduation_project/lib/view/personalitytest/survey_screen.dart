// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/SurveyController.dart';



class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SurveyController _surveyController = Get.put(SurveyController());
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('طبطبة')),
        ),
        body: Obx(
          () => _surveyController.isloading.value
              ? Center(child: CircularProgressIndicator())
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: Adaptive.w(40),
                      height: Adaptive.h(20),
                      child: Image.asset(
                        'images/logo3.png',
                        fit: BoxFit.fill,
                        width: 500,
                      ),
                    ),
                    Center(
                        child: Text(_surveyController.res.toString(),
                            style: TextStyle(fontSize: 15))),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          backgroundColor: Color(0xFF0E2A4B),
                          minimumSize: Size(Adaptive.w(70), Adaptive.h(5))),
                      child: Text(
                        'نعم',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      onPressed: () {
                        _surveyController.senddata('نعم');
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        backgroundColor: Color(0xFF0E2A4B),
                        minimumSize: Size(Adaptive.w(70), Adaptive.h(5)),
                      ),
                      child: Text(
                        'لا',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      onPressed: () {
                        String x = 'لا';
                        _surveyController.senddata(x);
                      },
                    ),
                  ],
                ),
        ));
  }
}
