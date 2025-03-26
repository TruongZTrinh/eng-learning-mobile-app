import 'dart:async';
import 'package:english_learning_app/shared/audio_helper.dart';
import 'package:english_learning_app/shared/speech_service.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/models/speaking_sentence_model.dart';
import 'package:flutter/material.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:get/get.dart';

class SpeakingQuizController extends GetxController {
  final SpeechService _speechService = Get.put(SpeechService());

  var isLoading = true.obs;

  // Các câu nói trong các lesson speaking quiz
  final RxList<SpeakingSentenceModel> visibleSentences =
      <SpeakingSentenceModel>[].obs;
  late List<SpeakingSentenceModel> listLessonSentences;
  RxInt currentSentenceIndex = 0.obs;

  // Quản lý ghi âm và nhận diện giọng nói
  RxBool isListening = false.obs;
  RxBool isListeningToUser = false.obs;
  RxString recognizedSentence = "".obs;
  String originalSentence = "";

  // Độ chính xác của từng câu
  RxList<int> sentenceAccuracies = <int>[].obs;
  RxInt accuracy = 0.obs;
  var isCalculatingAccuracy = false.obs;
  var isCalculatingAccuracyList = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    initLoading();
    _speechService.initSpeech();
  }

  void initLoading() async {
    await Future.delayed(const Duration(seconds: 2), () {
      isLoading.value = false;
    });
  }

  /// Khởi tạo danh sách câu nói trong bài học
  void initializeSentences(List<SpeakingSentenceModel> lessonSentences) {
    listLessonSentences = lessonSentences;
    currentSentenceIndex.value = 0;
    visibleSentences.clear();
    sentenceAccuracies.clear();

    if (listLessonSentences.isNotEmpty) {
      visibleSentences.add(listLessonSentences.first);
      originalSentence = listLessonSentences.first.text;

      // Khởi tạo điểm bằng 0 cho từng câu
      sentenceAccuracies
          .addAll(List<int>.filled(listLessonSentences.length, 0));
      isCalculatingAccuracyList
          .assignAll(List<bool>.filled(listLessonSentences.length, false));

      // Tự động đọc câu đầu tiên
      playSentence(lessonSentences.first);
    }
  }

  void addNextSentence() {
    if (currentSentenceIndex < listLessonSentences.length - 1) {
      currentSentenceIndex++;
      visibleSentences.add(listLessonSentences[currentSentenceIndex.value]);
      originalSentence = listLessonSentences[currentSentenceIndex.value].text;

      playSentence(listLessonSentences[currentSentenceIndex.value]);
    }
  }

  void playSentence(SpeakingSentenceModel sentence) async {
    await _speechService.speak(sentence.text, sentence.speaker);
  }

  Future<void> startOrStopListening() async {
    if (isListening.value) {
      // Dừng nghe thủ công
      await _speechService.stopListening();
      isListening.value = false;
      isListeningToUser.value = false; // Hide the loading indicator
      recognizedSentence.value = _speechService.recognizedSentence.value;

      print("Recognized sentence: ${recognizedSentence.value}");
      // Show the loading indicator for the current sentence
      isCalculatingAccuracyList[currentSentenceIndex.value] = true;

      await Future.delayed(const Duration(milliseconds: 1500));

      // Tính toán độ chính xác cho từng câu
      int calculatedAccuracy = calculateSimilarity(originalSentence).toInt();

      if (calculatedAccuracy < 70) {
        await AudioHelper.playAudioFromAsset("error_sound.mp3");
      } else {
        await AudioHelper.playAudioFromAsset("correct_sound.mp3");
      }

      // Update the accuracy of the current sentence
      sentenceAccuracies[currentSentenceIndex.value] = calculatedAccuracy;

      // Hide the loading indicator for the current sentence
      isCalculatingAccuracyList[currentSentenceIndex.value] = false;

      await Future.delayed(const Duration(milliseconds: 1500));
      if (calculatedAccuracy >= 70) {
        addNextSentence();
      }
    } else {
      _speechService.stopSpeaking();
      // Bắt đầu nghe
      await _speechService.startListening(
        (result) {
          recognizedSentence.value = result;
        },
      );

      isListening.value = true;
      isListeningToUser.value = true;
    }
  }

  void onSpeechStopped() async {
    if (isListening.value) {
      isListening.value = false;
      isListeningToUser.value = false;

      // Lấy câu đã nghe
      print("Recognized sentence: ${recognizedSentence.value}");

      // Hiển thị loading indicator cho câu hiện tại
      isCalculatingAccuracyList[currentSentenceIndex.value] = true;

      await Future.delayed(const Duration(milliseconds: 1500));

      // Tính toán độ chính xác
      int calculatedAccuracy = calculateSimilarity(originalSentence).toInt();

      if (calculatedAccuracy < 70) {
        await AudioHelper.playAudioFromAsset("error_sound.mp3");
      } else {
        await AudioHelper.playAudioFromAsset("correct_sound.mp3");
      }

      // Cập nhật độ chính xác của câu hiện tại
      sentenceAccuracies[currentSentenceIndex.value] = calculatedAccuracy;

      // Ẩn loading indicator cho câu hiện tại
      isCalculatingAccuracyList[currentSentenceIndex.value] = false;

      await Future.delayed(const Duration(milliseconds: 1500));
      if (calculatedAccuracy >= 70) {
        addNextSentence();
      }
    }
  }

  /// Đánh giá phát âm
  double calculateSimilarity(String originalSentence) {
    List<String> originalWords = originalSentence.toLowerCase().split(' ');
    List<String> recognizedWords =
        recognizedSentence.value.toLowerCase().split(' ');

    int correctWordCount = 0;

    for (int i = 0; i < originalWords.length; i++) {
      if (i < recognizedWords.length) {
        // Use FuzzyWuzzy's ratio for partial matching
        double similarity =
            ratio(originalWords[i], recognizedWords[i]).toDouble();
        if (similarity > 80) {
          // Consider words with >80% similarity as correct
          correctWordCount++;
        }
      }
    }

    // Calculate accuracy as a percentage of correct words
    return (correctWordCount / originalWords.length) * 100;
  }

  // Method to compare words and return a list of TextSpans with colored words
  List<TextSpan> getColoredSentence(
      String originalSentence, String recognizedSentence) {
    List<String> originalWords = originalSentence.split(' ');
    List<String> recognizedWords = recognizedSentence.split(' ');

    List<TextSpan> spans = [];

    for (int i = 0; i < originalWords.length; i++) {
      String word = originalWords[i];
      Color color = Colors.red; // Default color for incorrect words

      if (i < recognizedWords.length && recognizedWords[i] == word) {
        color = Colors.green; // Correct word, turn it green
      }

      spans.add(TextSpan(
        text: "$word ", // Add space after each word
        style:
            TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold),
      ));
    }

    return spans;
  }
}
