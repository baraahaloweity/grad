// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// class UserProfileModelEdit extends GetxController {
//   String _name = '';
//   String _email = '';
//   int _age = 0;
//   final _storage = FlutterSecureStorage();
//
//   Future<String> get token async {
//     return await _storage.read(key: 'token') ?? '';
//   }
//
//   String get name => _name;
//
//   String get email => _email;
//
//   int get age => _age;
//
//   Future<void> fetchUserProfile() async {
//     String token = await this.token;
//
//     if (token.isNotEmpty) {
//       Uri url = Uri.parse('https://mood-bot.onrender.com/user/profile');
//
//       Map<String, String> headers = {
//         "Accept": "application/json",
//         "Content-Type": "application/json",
//         "user-token": "$token",
//       };
//
//       try {
//         http.Response response = await http.get(url, headers: headers);
//         if (response.statusCode == 200) {
//           Map<String, dynamic> data = json.decode(response.body);
//           _name = data['name'];
//           _email = data['email'];
//           _age = data['age'];
//           await _storage.write(key: 'name', value: _name);
//           await _storage.write(key: 'email', value: _email);
//           await _storage.write(key: 'age', value: _age.toString());
//           update();
//         }
//       } catch (error) {
//         print(error);
//       }
//     }
//   }
//
//   Future<void> readUserProfile() async {
//     _name = await _storage.read(key: 'name') ?? '';
//     _email = await _storage.read(key: 'email') ?? '';
//     String ageString = await _storage.read(key: 'age') ?? '';
//     _age = int.tryParse(ageString) ?? 0;
//     update();
//   }
//
//   Future<bool> editProfile(String newName, int newAge, String currentPassword, String newPassword, String confirmNewPassword) async {
//     String token = await this.token;
//
//     if (token.isNotEmpty) {
//       Uri url = Uri.parse('https://mood-bot.onrender.com/user/profile');
//
//       Map<String, String> headers = {
//         "Accept": "application/json",
//         "Content-Type": "application/json",
//         "user-token": "$token",
//       };
//
//       Map<String, dynamic> body = {
//         'name': newName,
//         'age': newAge.toString(),
//         'current_password': currentPassword,
//         'new_password': newPassword,
//         'confirm_new_password': confirmNewPassword,
//       };
//
//       try {
//         http.Response response = await http.put(url, headers: headers, body: json.encode(body));
//         if (response.statusCode == 200) {
//           _name = newName;
//           _age = newAge;
//           await _storage.write(key: 'name', value: _name);
//           await _storage.write(key: 'age', value: _age.toString());
//           update();
//           return true;
//         }
//       } catch (error) {
//         print(error);
//       }
//     }
//
//     return false;
//   }
// }
