import 'package:get/get.dart';

class OtherDateController extends GetxController {
  var date = DateTime.now().obs;

  void changeOtherDate() {
    date.value = DateTime.now();
  }
}
