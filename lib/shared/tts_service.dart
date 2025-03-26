import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class TtsService extends GetxController {
  final FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  List<dynamic> availableVoices = [];

  TtsService() {
    initialize();
  }

  Future<void> initialize() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);

    flutterTts.setStartHandler(
      () {
        isSpeaking = true;
      },
    );

    flutterTts.setPauseHandler(
      () {
        isSpeaking = false;
      },
    );

    flutterTts.setCancelHandler(
      () {
        isSpeaking = false;
      },
    );
  }

  Future speak(String text) async {
    if (text.isEmpty) return;
    isSpeaking = true;
    var result = await flutterTts.speak(text);
    print('Result: $result');
  }

  Future stop() async {
    if (isSpeaking) {
      await flutterTts.stop();
      isSpeaking = false;
    }
  }
}
