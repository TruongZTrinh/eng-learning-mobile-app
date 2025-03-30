import 'package:english_learning_app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToNextScreen();
  }

  void navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed(AppRoutes.main);
  }
}
