import 'package:get/get.dart';
import 'package:translator/translator.dart';

class TranslationController extends GetxController {
  var isTranslated = false.obs;
  var translatedSentence = <String>[].obs;
  var originalSentence = <String>[].obs;

  final translator = GoogleTranslator();

  void setOriginalText(List<String> sentences) {
    originalSentence.assignAll(sentences);
    translatedSentence.assignAll(List<String>.filled(
        sentences.length, '')); // Initialize with empty strings
  }

  // Dịch tất cả các câu
  void toggleTranslation() async {
    isTranslated.value = !isTranslated.value;

    try {
      List<Future<String>> translationFutures =
          originalSentence.map((sentence) async {
        var translation = await translator.translate(sentence, to: 'vi');
        return translation.text;
      }).toList();

      // Wait for all translations to complete
      List<String> translations = await Future.wait(translationFutures);

      // Update the translatedSentence list
      translatedSentence.assignAll(translations);
    } catch (e) {
      print("Error during translation: $e");
      isTranslated.value = false; // Revert translation toggle on error
    }
  }
}
