import 'dart:convert';

// import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
// import 'package:graduationproject/model/SurveyModel.dart';
import 'package:http/http.dart' as http;

class SurveyController extends GetxController {
  RxString res = ''.obs;
  var isloading = false.obs;
  var count = 2;
  @override
  void onInit() {
    super.onInit();
    fetchdata();
  }

  fetchdata() async {
    try {
      isloading(true);
      http.Response response =
          await http.get(Uri.parse('http://192.168.1.101/Anxiety1'));

      if (response.statusCode == 200) {
        print('status code is:');
        print(response.statusCode);
        print(utf8.decode(response.bodyBytes));
        res.value = utf8.decode(response.bodyBytes);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    } finally {
      isloading(false);
    }
  }

  senddata(String answer) async {
    try {
      isloading(true);
      var url = 'http://192.168.1.101/Anxiety$count';
      Map data = {"answer": answer};
      var body = json.encode(data);
      var response = await http.post((Uri.parse(url)),
          headers: {"Content-Type": "application/json"}, body: body);
      print("${response.statusCode}");
      print(utf8.decode(response.bodyBytes));
      res.value = utf8.decode(response.bodyBytes);
      count += 1;
    } catch (e) {
      print(e);
    } finally {
      isloading(false);
    }
  }
}
