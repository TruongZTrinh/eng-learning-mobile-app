import 'package:get/get.dart';

class SurveyController extends GetxController {
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    initLoading();
  }

  void initLoading() async {
    await Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;
    });
  }
}
