import 'package:get/get.dart';
import '../controller/user_profile_model.dart';

class HomePageController extends GetxController {
  final UserProfileModel userProfile = Get.put(UserProfileModel());

  @override
  void onInit() {
    userProfile.fetchUserProfile();
    //userProfile.readUserProfile();

    super.onInit();
  }

  Future<void> fetchUserProfile() async {
    await userProfile.fetchUserProfile();
  }
}