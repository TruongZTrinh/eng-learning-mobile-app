import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var pageIndex = 0.obs;

  void changeTabIndex(int index) {
    pageIndex.value = index;
  }
}
