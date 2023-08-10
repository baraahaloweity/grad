import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HistogramController extends GetxController {
  final List<HistogramData> histogramData = <HistogramData>[];
  final _storage = FlutterSecureStorage();

  Future<String> get token async {
    return await _storage.read(key: 'token') ?? '';
  }

  Future<void> fetchData() async {
    String userToken = await token; // Corrected variable name

    if (userToken.isNotEmpty) {
      try {
        final response = await http.get(
          Uri.parse('https://mood-bot.onrender.com/user/feelings?month=1&year=1'),
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json",
            "user-token": userToken, // Use userToken here
          },
        );

        if (response.statusCode == 200) {
          final List<dynamic> data = json.decode(response.body);
          histogramData.clear();
          data.forEach((item) {
            histogramData.add(HistogramData.fromJson(item));
          });
        } else {
          throw Exception('Failed to fetch data');
        }
      } catch (error) {
        throw Exception('Failed to fetch data: $error');
      }
    }
  }
}

class HistogramData {
  final String title;
  final DateTime createdAt;
  final double confidence;
  final int id;
  final String message;

  HistogramData({
    required this.title,
    required this.createdAt,
    required this.confidence,
    required this.id,
    required this.message,
  });

  factory HistogramData.fromJson(Map<String, dynamic> json) {
    return HistogramData(
      title: json['title'],
      createdAt: DateTime.parse(json['created_at']),
      confidence: json['confidence'].toDouble(),
      id: json['id'],
      message: json['message'],
    );
  }
}
