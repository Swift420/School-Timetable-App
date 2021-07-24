import 'package:get/get.dart';

class DateController extends GetxController {
  var class2 = DateTime.now().weekday.obs;

  void changeDate() {
    class2.value = DateTime.now().weekday;
  }
}
