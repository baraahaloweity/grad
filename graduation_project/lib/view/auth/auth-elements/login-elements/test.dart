import 'package:get/get.dart';

class MyController extends GetxController {
  var _isWritingBoxVisible = false.obs;

  void toggleWritingBox() {
    _isWritingBoxVisible.value = !_isWritingBoxVisible.value;
  }

  bool get isWritingBoxVisible => _isWritingBoxVisible.value;
}