import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var pageIndex = 0.obs;

  void changeTabIndex(int index) {
    Future.delayed(
      const Duration(milliseconds: 400),
      () => pageIndex.value = index,
    );
  }
}
