import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/DoctorGuideController.dart';
import '../../model/doctor_guide_model.dart';




class DoctorGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DoctorGuideController controller = Get.put(DoctorGuideController());
    return Scaffold(
      backgroundColor: Color(0xFFe7c8e7),
      appBar: AppBar(
        backgroundColor: Color(0xFF7062b0),
        title: Center(
          child: Text(
            'بسيطة',
          ),
        ),
      ),
      body: Obx(
            () => controller.isloading.value
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: controller.doctors.length,
          itemBuilder: (context, index) {
            Doctor doctor = controller.doctors[index];
            return Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: const Color.fromARGB(255, 22, 236, 133),
                ),
                borderRadius: BorderRadius.circular(25.0), //<-- SEE HERE
              ),
              color: Color(0xFF3e2f87),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      // backgroundImage: NetworkImage(doctor.profilePictureUrl),
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor.name,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          doctor.phone,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
