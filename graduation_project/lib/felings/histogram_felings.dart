import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../controller/histogram_controller.dart';


class HistogramScreen extends StatelessWidget {
  final HistogramController controller = Get.put(HistogramController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6A57D5),
        title: Text('Histogram'),
      ),
      body: FutureBuilder<void>(
        future: controller.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return Center(
              child: GetBuilder<HistogramController>(
                builder: (controller) {
                  return charts.BarChart(
                    [
                      charts.Series<HistogramData, String>(
                        id: 'histogramData',
                        data: controller.histogramData,
                        domainFn: (HistogramData data, _) => data.title,
                        measureFn: (HistogramData data, _) => data.confidence,
                      ),
                    ],
                    animate: true,
                    vertical: false,
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
