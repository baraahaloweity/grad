// Column(
// children: [
// CircleAvatar(
// backgroundColor: Colors.grey,
// child: Icon(Icons.person, size: 80, color: Colors.grey.shade300,),
// radius: 50,
// //backgroundImage: NetworkImage(controller.photoURL.value),
//
// ),
// IconButton(
// alignment: Alignment.topLeft,
// icon: Icon(Icons.camera_alt,size: 30,),
// onPressed: () {
// // TODO: Handle the button press
// },
// ),
// ListTile(
// title: TextFormField(
// controller: _nameController,
//
// decoration: InputDecoration(
// //fillColor:  Color(0xFF9BC7F9),
// // Setting the fill color
// //filled: true,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
//
// // label: ,
// hintText: ' الاسم',
// hintStyle:TextStyle(color: Color(0xFF660066),fontSize: 20),
//
// ),
// ),
// ),
// ListTile(
// title: TextFormField(
// controller: _ageController,
//
// decoration: InputDecoration(
// //fillColor:  Color(0xFF9BC7F9),
// // Setting the fill color
// //filled: true,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
//
// // label: ,
// hintText: ' العمر',
// hintStyle:TextStyle(color: Color(0xFF660066),fontSize: 20),
//
// ),
// ),
// ),
// ListTile(
// title: TextFormField(
// controller: _currentPasswordController,
//
// decoration: InputDecoration(
// //fillColor:  Color(0xFF9BC7F9),
// // Setting the fill color
// //filled: true,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
//
// // label: ,
// hintText: 'كلمة السر الحالية',
// hintStyle:TextStyle(color: Color(0xFF660066),fontSize: 20),
//
// ),
// ),
// ),
// ListTile(
// title: TextFormField(
// controller: _newPasswordController,
//
// decoration: InputDecoration(
// //fillColor:  Color(0xFF9BC7F9),
// // Setting the fill color
// //filled: true,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
//
// // label: ,
// hintText: 'كلمة السر الجديدة',
// hintStyle:TextStyle(color: Color(0xFF660066),fontSize: 20),
//
// ),
// ),
// ),
// ListTile(
// title: TextFormField(
// controller: _confirmNewPasswordController,
//
// decoration: InputDecoration(
// //fillColor:  Color(0xFF9BC7F9),
// // Setting the fill color
// //filled: true,
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// borderSide: BorderSide(
// color: Color(0xFF40AACE),
// ),
// ),
//
// // label: ,
// hintText: 'تأكيد كلمة السر الجديدة',
// hintStyle:TextStyle(color: Color(0xFF660066),fontSize: 20),
//
// ),
// ),
// ),
// SizedBox(height: 15),
// GestureDetector(
// onTap: () async {
//
//
// String newName = _nameController.text;
// int newAge = int.tryParse(_ageController.text) ?? 0;
// String currentPassword = _currentPasswordController.text;
// String newPassword = _newPasswordController.text;
// String confirmNewPassword = _confirmNewPasswordController.text;
//
// bool success = await _userProfileModel.editProfile(
// newName,
// newAge,
// currentPassword,
// newPassword,
// confirmNewPassword,
// );
// if (success) {
// Get.snackbar(
// 'Success',
// 'Profile updated successfully.',
// snackPosition: SnackPosition.BOTTOM,
// );
// //await _userProfileModel.fetchUserProfile();
// } else {
// Get.snackbar(
// 'Error',
// 'Failed to update the profile.',
// snackPosition: SnackPosition.BOTTOM,
// );
// }
// },
// child: Container(
//
// margin: const EdgeInsets.only(left: 100, right: 100),
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// borderRadius: BorderRadius.circular(15),
// color: const Color(0xFF660066),
// ),
// child: const Center(
// child: Padding(
// padding: EdgeInsets.all(8.0),
// child: Text(
// 'حفظ',
// style: TextStyle(
// color: Colors.white,
// fontSize: 30,
// fontWeight: FontWeight.w500,
// fontFamily: 'DGShameless',
// ),
// ),
// ),
// ),
// ),
// )
// ],
// );