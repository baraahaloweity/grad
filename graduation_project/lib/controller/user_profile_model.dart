import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class UserProfileModel extends GetxController {
  String _name = '';
  String _email = '';
  int _age = 0;
  final _storage = FlutterSecureStorage();

  Future<String> get token async {
    return await _storage.read(key: 'token') ?? '';

  }

  String get name => _name;

  String get email => _email;

  int get age => _age;

  Future<void> fetchUserProfile() async {
    print("pageprofile11111111111111111111111111111111");
    String token = await this.token;
    print("profillllllle  token" + token);
    if (token.isNotEmpty) {
      print("yessssssssssssssssssssssssssss" );
      // Make API call to get user profile data
      // Replace with your own API endpoint and logic
      Uri url = Uri.parse('https://mood-bot.onrender.com/user/profile');
      print("nooooooooooooooooooooooooooooooo");
      Map<String, String> headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "user-token": "$token",
      };

      try {
        print("profillllllleeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee" );
        http.Response response = await http.get(url, headers: headers);
        print("responssss"+response.body);
        if (response.statusCode == 200) {
          print("profilllllll22222222222222200000000000000000000000000000e" );
          String responseBody = utf8.decode(response.bodyBytes);
          Map<String, dynamic> data = json.decode(responseBody);
          print(data);
          _name = data['name'];
          _email = data['email'];
          _age = data['age'];
          await _storage.write(key: 'name', value: _name);
          await _storage.write(key: 'email', value: _email);
          await _storage.write(key: 'age', value: _age.toString());
          print("");
          update();

        }
      } catch (error) {
        print(error);
      }
    }
  }

  Future<void> readUserProfile() async {
    _name = await _storage.read(key: 'name') ?? '';
    _email = await _storage.read(key: 'email') ?? '';
    String ageString = await _storage.read(key: 'age') ?? '';
    _age = int.tryParse(ageString) ?? 0;
    print(await _storage.readAll());
    update();
  }


  Future<bool> editProfile(String newName, int newAge, String currentPassword, String newPassword, String confirmNewPassword) async {
    String token = await this.token;

    if (token.isNotEmpty) {
      Uri url = Uri.parse('https://mood-bot.onrender.com/user/profile');

      Map<String, String> headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "user-token": "$token",
      };

      Map<String, dynamic> body = {
        'name': newName,
        'age': newAge.toString(),
        'current_password': currentPassword,
        'new_password': newPassword,
        'confirm_new_password': confirmNewPassword,
      };

      try {
        http.Response response = await http.put(url, headers: headers, body: json.encode(body));
        if (response.statusCode == 200) {
          _name = newName;
          _age = newAge;
          await _storage.write(key: 'name', value: _name);
          await _storage.write(key: 'age', value: _age.toString());
          update();
          return true;
        }
      } catch (error) {
        print(error);
      }
    }

    return false;
  }
}