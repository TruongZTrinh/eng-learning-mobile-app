import 'package:english_learning_app/modules/quiz/speaking_quiz/controllers/speaking_quiz_controller.dart';
import 'package:get/get.dart';

class SpeakingQuizBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SpeakingQuizController());
  }
}
