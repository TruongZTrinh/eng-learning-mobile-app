import 'package:get/get.dart';

class ExpandableController extends GetxController {
  var expandedIndex = (-1).obs;

  void toggle(int index) {
    if (expandedIndex.value == index) {
      expandedIndex.value = -1; // thu gọn nếu bấm lại
    } else {
      expandedIndex.value = index;
    }
  }
}
