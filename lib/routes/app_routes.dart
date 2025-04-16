import 'package:english_learning_app/modules/auth/views/sign_in_page.dart';
import 'package:english_learning_app/modules/auth/views/sign_up_page.dart';
import 'package:english_learning_app/modules/auth/views/survey_page.dart';
import 'package:english_learning_app/modules/auth/views/survey_question_page.dart';
import 'package:english_learning_app/modules/exercise/views/exercise_page.dart';
import 'package:english_learning_app/modules/home/views/home_page.dart';
import 'package:english_learning_app/modules/home/views/main_page.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/views/listening_quiz_page.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/speaking_quiz_binding.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/views/speaking_quiz_page.dart';
import 'package:english_learning_app/modules/quiz/views/quiz_page.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/views/vocab_quiz_page.dart';
import 'package:english_learning_app/modules/speaking/views/speaking_page.dart';
import 'package:english_learning_app/modules/splash_screen/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const splash = '/splash';
  static const login = '/login';
  static const signup = '/signup';
  static const register = '/register';
  static const forgotPassword = '/forgotPassword';
  static const main = '/main';
  static const survey = '/survey';
  static const surveyQuestions = '/surveyQuestions';
  static const profile = '/profile';
  static const home = '/home';
  static const quiz = '/quiz';
  static const exercise = '/exercise';
  static const speaking = '/speaking';
  static const speakingQuiz = '/speakingQuiz';
  static const vocabularyQuiz = '/vocabularyQuiz';
  static const listeningQuiz = '/listeningQuiz';

  static final routes = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: login,
      page: () => const SignInPage(),
      transition: Transition.fadeIn,
      curve: Curves.easeInOut,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: survey,
      page: () => const SurveyPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: surveyQuestions,
      page: () => SurveyQuestionPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: signup,
      page: () => const SignUpPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: main,
      page: () => MainPage(),
    ),
    GetPage(
      name: home,
      page: () => HomePage(),
    ),
    GetPage(
      name: quiz,
      page: () => const QuizPage(),
    ),
    GetPage(
      name: exercise,
      page: () => const ExercisePage(),
    ),
    GetPage(
      name: speaking,
      page: () => const SpeakingPage(),
    ),
    GetPage(
      name: AppRoutes.speakingQuiz,
      page: () => const SpeakingQuizPage(),
      binding: SpeakingQuizBinding(),
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: vocabularyQuiz,
      page: () => VocabQuizPage(),
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: listeningQuiz,
      page: () => ListeningQuizPage(),
      transitionDuration: const Duration(milliseconds: 500),
    )
  ];
}
