import 'package:english_learning_app/modules/quiz/speaking_quiz/controllers/speaking_quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class SpeechService extends GetxService {
  final FlutterTts _tts = FlutterTts();
  final stt.SpeechToText _speech = stt.SpeechToText();
  RxBool isSpeechAvailable = false.obs;
  RxBool isListening = false.obs;
  RxString recognizedSentence = "".obs;

  @override
  void onInit() {
    super.onInit();
    requestPermissions();
    initSpeech();
  }

  Future<void> listVoices() async {
    try {
      final voices = await _tts.getVoices;
      for (var voice in voices) {
        if (voice['locale'] == 'en-US') {
          print("Voice: $voice");
        }
      }
    } catch (e) {
      print("Error fetching voices: $e");
    }
  }

  /// Yêu cầu quyền sử dụng Microphone
  Future<void> requestPermissions() async {
    var status = await Permission.microphone.request();
    if (status.isGranted) {
      print("Microphone permission granted");
    } else if (status.isPermanentlyDenied) {
      print("Microphone permission permanently denied");
      await openAppSettings();
    } else {
      print("Microphone permission denied! Please enable it in settings");
    }
  }

  /// Khởi tạo Speech-to-Text
  Future<void> initSpeech() async {
    try {
      isSpeechAvailable.value = await _speech.initialize(onStatus: (status) {
        print("Speech-to-Text status: $status");
        if (status == "notListening") {
          stopListening();
          Get.find<SpeakingQuizController>().onSpeechStopped();
        }
      }, onError: (error) {
        print("Speech-to-Text error: $error");
        stopListening(); // Dừng nghe nếu có lỗi
        Get.find<SpeakingQuizController>().onSpeechStopped();
      });
      if (!isSpeechAvailable.value) {
        print("Speech-to-Text initialization failed");
      }
    } catch (e) {
      print("Error initializing Speech-to-Text: $e");
    }
  }

  /// Đọc văn bản bằng TTS
  Future<void> speak(String text, String speaker) async {
    try {
      await _tts.setLanguage("en-US");
      await _tts.setPitch(1.0);
      await _tts.setSpeechRate(0.5);
      await _tts.setVolume(1.0);
      await _tts.awaitSpeakCompletion(true);

      if (speaker == 'M') {
        await _tts.setVoice({"name": "en-us-x-tpd-network", "locale": "en-US"});
      } else if (speaker == 'F') {
        await _tts.setVoice({"name": "en-us-x-sfg-network", "locale": "en-US"});
      }

      await _tts.speak(text);
    } catch (e) {
      print("Error speaking text: $e");
    }
  }

  Future<double> calculateSpeakDuration(String text, double speechRate) async {
    const double wordsPerSecond = 2.5; // Tốc độ đọc trung bình (150 từ/phút)
    int wordCount = text.split(' ').length; // Đếm số từ trong văn bản
    return (wordCount / wordsPerSecond) / speechRate;
  }

  Future<void> stopSpeaking() async {
    try {
      await _tts.stop();
      print("TTS stopped");
    } catch (e) {
      print("Error stopping TTS: $e");
    }
  }

  /// Bắt đầu ghi âm và gọi callback khi có kết quả
  Future<void> startListening(Function(String) onResult) async {
    if (!isSpeechAvailable.value) return;

    await _speech.listen(
        localeId: "en_US",
        pauseFor: const Duration(seconds: 10),
        listenFor: const Duration(minutes: 2),
        onResult: (result) {
          recognizedSentence.value = result.recognizedWords.toLowerCase();
          onResult(recognizedSentence.value);
        },
        listenOptions: stt.SpeechListenOptions(
          partialResults: true,
          listenMode: stt.ListenMode.dictation,
        ));
    isListening.value = true; // Đặt trạng thái đang nghe
  }

  /// Dừng ghi âm
  Future<void> stopListening() async {
    if (!_speech.isListening) return;
    isListening.value = false;
    await _speech.stop();
  }
}
