
import 'package:get/get.dart';

import '../model/home_view_model.dart';
class Binding extends Bindings {
  @override
  void dependencies()
  {
    Get.lazyPut(() => HomeViewModel());
  }
}
