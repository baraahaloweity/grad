// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controller/edit_profile_controller.dart';
// class EditProfileScreen extends StatelessWidget {
//   final UserProfileModelEdit _userProfileModel = Get.put(UserProfileModelEdit());
//
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _ageController = TextEditingController();
//   final TextEditingController _currentPasswordController = TextEditingController();
//   final TextEditingController _newPasswordController = TextEditingController();
//   final TextEditingController _confirmNewPasswordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Profile'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//             ),
//             TextField(
//               controller: _ageController,
//               decoration: InputDecoration(
//                 labelText: 'Age',
//               ),
//             ),
//             TextField(
//               controller: _currentPasswordController,
//               decoration: InputDecoration(
//                 labelText: 'Current Password',
//               ),
//               obscureText: true,
//             ),
//             TextField(
//               controller: _newPasswordController,
//               decoration: InputDecoration(
//                 labelText: 'New Password',
//               ),
//               obscureText: true,
//             ),
//             TextField(
//               controller: _confirmNewPasswordController,
//               decoration: InputDecoration(
//                 labelText: 'Confirm New Password',
//               ),
//               obscureText: true,
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 String newName = _nameController.text;
//                 int newAge = int.tryParse(_ageController.text) ?? 0;
//                 String currentPassword = _currentPasswordController.text;
//                 String newPassword = _newPasswordController.text;
//                 String confirmNewPassword = _confirmNewPasswordController.text;
//
//                 bool success = await _userProfileModel.editProfile(
//                   newName,
//                   newAge,
//                   currentPassword,
//                   newPassword,
//                   confirmNewPassword,
//                 );
//                 if (success) {
//                   Get.snackbar(
//                     'Success',
//                     'Profile updated successfully.',
//                     snackPosition: SnackPosition.BOTTOM,
//                   );
//                 } else {
//                   Get.snackbar(
//                     'Error',
//                     'Failed to update the profile.',
//                     snackPosition: SnackPosition.BOTTOM,
//                   );
//                 }
//               },
//               child: Text('Update Profile'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
