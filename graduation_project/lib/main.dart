import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:graduation_project/view/get_start/one_page/one_page.dart';
import 'package:graduation_project/view/home_page/home_page.dart';
import 'package:graduation_project/view/home_page/home_page_screen.dart';


import '/view/Auth/Auth-screens/login_screen.dart';
import 'constant/colors_constant.dart';
import 'controller/user_profile_model.dart';



void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  // Create a new instance of FlutterSecureStorage
  const storage = FlutterSecureStorage();
  UserProfileModel userProfileModel = Get.put(UserProfileModel());
  await userProfileModel.readUserProfile();
  // Read the access token from secure storage
  final token = await storage.read(key: 'token');
  
  Get.put(HomeController());

  runApp( MyApp(token: token));
}

class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({Key? key, this.token}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    UserProfileModel userProfileModel = Get.find();
    String name = userProfileModel.name;
    String email = userProfileModel.email;
    return GetMaterialApp(
      // supportedLocales: const [
      //   Locale('ar','AR'), // English
      // ],
      theme: ThemeData(
        //primaryColor: primarycolor,
        fontFamily: 'DGNadeen',

      ),
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      home:token != null ? HomePage() : const OnePage(),
      // getPages: [
      //   GetPage(name: "/login_screen", page: ()=>const LoginScreen())
      //
      // ],
    );

  }
}
class HomeController extends GetxController {
  final FlutterSecureStorage storage = Get.put(FlutterSecureStorage());
  final RxBool isLoggedIn = false.obs;
  // final  name = ''.obs;
  // String email = '';
  Future<void> logout() async {
    // Remove the access token from secure storage
    await storage.delete(key: 'token');
    //await storage.delete(key: 'name');
    //await storage.delete(key: 'email');
    // Set isLoggedIn to false
    isLoggedIn.value = false;

    // Navigate to the login screen
    Get.offAll(() => const OnePage());
  }

}

