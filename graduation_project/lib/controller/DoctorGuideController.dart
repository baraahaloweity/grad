import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/doctor_guide_model.dart';


class DoctorGuideController extends GetxController {
  var doctors = <Doctor>[].obs;
  var isloading = false.obs;

  @override
  void onInit() {
    fetchdata();
    super.onInit();
  }

  fetchdata() async {
    try {
      isloading(true);
      http.Response response = await http.get(Uri.parse(
          'https://mood-bot.onrender.com/dashboard/doctors?skip=0&limit=100'));

      if (response.statusCode == 200) {
        print('status code is:');
        print(response.statusCode);
        print(utf8.decode(response.bodyBytes));
        final data = jsonDecode(response.body) as List<dynamic>;
        doctors.assignAll(data.map((json) => Doctor(
          json['name'] as String,
          json['phone'] as String,
          json['email'] as String,
        )));
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    } finally {
      isloading(false);
    }
  }
}
