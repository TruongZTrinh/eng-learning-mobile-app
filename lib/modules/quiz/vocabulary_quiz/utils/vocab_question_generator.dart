import 'dart:math';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/models/vocab_item_model.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/models/vocab_question_model.dart';
import 'package:get/get.dart';

List<VocabQuestionModel> generateQuestions(RxList<VocabItemModel> vocabItems) {
  List<VocabQuestionModel> questions = [];

  for (var vocab in vocabItems) {
    // Phần 1: Chọn từ vựng từ hình ảnh
    questions.add(VocabQuestionModel(
        word: vocab.word,
        imgPath: vocab.imgPath,
        choices: getRandomChoices(
            vocabItems.map((e) => e.word).toList(), vocab.word, 2),
        correctAnswer: vocab.word,
        questionType: QuestionType.selectWord));
  }

  for (var vocab in vocabItems) {
    // Phần 2: Chọn từ liên quan với hình
    questions.add(
      VocabQuestionModel(
          word: vocab.word,
          imgPath: vocab.imgPath,
          choices: getRandomChoices(
              vocabItems.map((e) => e.imgPath).toList(), vocab.imgPath, 3),
          correctAnswer: vocab.imgPath,
          questionType: QuestionType.selectImage),
    );
  }

  return questions;
}

List<String> getRandomChoices(
    List<String> allChoices, String correctAnswer, int numberChoices) {
  List<String> choices = allChoices.toList(); // Sao chép ds gốc
  choices.remove(correctAnswer); // Loại bỏ đáp án đúng
  choices.shuffle(Random()); // Trộn các đáp án
  choices = choices.take(numberChoices).toList(); // Lấy 2 lựa chọn sai
  choices.add(correctAnswer); // Thêm đáp án đúng
  choices.shuffle(Random()); // Xáo lại danh sách

  return choices;
}
