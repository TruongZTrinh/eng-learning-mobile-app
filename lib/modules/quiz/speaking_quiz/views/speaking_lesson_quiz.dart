import 'package:english_learning_app/modules/quiz/speaking_quiz/controllers/speaking_quiz_controller.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/controllers/translation_controller.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/models/speaking_sentence_model.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:english_learning_app/shared/speech_service.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SpeakingLessonQuiz extends StatelessWidget {
  const SpeakingLessonQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    final SpeakingQuizController speakingQuizController =
        Get.find<SpeakingQuizController>();
    final SpeechService speechService = Get.find<SpeechService>();

    final TranslationController translationController =
        Get.put(TranslationController());

    final arguments = Get.arguments;
    // final lessonId = arguments['lessonId'];
    final lessonName = arguments['lessonName'];

    final lessonSentences =
        List<SpeakingSentenceModel>.from(arguments['lessonSentences']);
    // Extract the text property from each SpeakingSentenceModel
    final sentenceTexts =
        lessonSentences.map((sentence) => sentence.text).toList();
    // Pass the extracted text list to the TranslationController
    translationController.setOriginalText(sentenceTexts);

    // Tạo danh sách câu nói trong bài học
    speakingQuizController.initializeSentences(lessonSentences);

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
                speechService.stopSpeaking();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text(lessonName),
        ),
        // floatingActionButton: FloatingActionButton.large(onPressed: () {
        //   speakingQuizController.addNextSentence();
        // }),
        floatingActionButton: Obx(
          () => ListeningButton(
            isListening: speakingQuizController.isListening.value,
            onPressed: () => speakingQuizController.startOrStopListening(),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        body: Obx(() {
          speakingQuizController.initLoading();

          if (speakingQuizController.isLoading.value) {
            return const Center(
              child: SpinKitThreeBounce(
                color: Colors.blue,
                size: 30,
              ),
            );
          }

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("English"),
                  Obx(
                    () => Switch(
                      value: translationController.isTranslated.value,
                      onChanged: (value) =>
                          translationController.toggleTranslation(),
                      activeColor: Colors.green,
                    ),
                  ),
                  const Text("Vietnamese"),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                    bottom: kFloatingActionButtonMargin +
                        kToolbarHeight, // Auto space for FAB
                  ),
                  itemCount: speakingQuizController.visibleSentences.length,
                  itemBuilder: (context, index) {
                    var sentence =
                        speakingQuizController.visibleSentences[index];
                    final isLeft = index % 2 == 0;

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              SentenceRow(
                                isLeft: isLeft,
                                onTap: () => speakingQuizController
                                    .playSentence(sentence),
                                sentence: sentence,
                                translationController: translationController,
                                index: index,
                              ),
                              Obx(() {
                                if (speakingQuizController
                                    .isCalculatingAccuracyList[index]) {
                                  return const SpinKitThreeBounce(
                                    color: Colors.blue,
                                    size: 30,
                                  );
                                } else {
                                  final accuracy = speakingQuizController
                                      .sentenceAccuracies[index];
                                  return Offstage(
                                    offstage: accuracy ==
                                        0, // Hide the widget if accuracy is 0
                                    child: Text(
                                      "Điểm số: $accuracy/100",
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.green),
                                    ),
                                  );
                                }
                              }),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }));
  }
}

class ListeningButton extends StatelessWidget {
  final bool isListening;
  final VoidCallback onPressed;

  const ListeningButton({
    super.key,
    required this.onPressed,
    required this.isListening,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        FloatingActionButton.large(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          onPressed: onPressed,
          child: Icon(
            isListening ? Icons.stop : Icons.mic,
            size: 50,
            color: AppColors.secondaryColor,
          ),
        ),
        if (isListening)
          const IgnorePointer(
            ignoring: true,
            child: SizedBox(
              height: 95,
              width: 95,
              child: CircularProgressIndicator(
                strokeWidth: 4,
              ),
            ),
          ),
      ],
    );
  }
}

class SentenceRow extends StatelessWidget {
  const SentenceRow({
    super.key,
    required this.isLeft,
    required this.sentence,
    required this.translationController,
    required this.index,
    required this.onTap,
  });

  final bool isLeft;
  final VoidCallback onTap;
  // final SpeakingQuizController speakingQuizController;
  final SpeakingSentenceModel sentence;
  final TranslationController translationController;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isLeft)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                const Icon(
                  Icons.person,
                  color: AppColors.secondaryColor,
                  size: 30,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: const Icon(
                    Icons.volume_up_sharp,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        Flexible(
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.all(10),
              constraints: const BoxConstraints(
                minHeight:
                    60, // Đặt chiều cao tối thiểu bằng với chiều cao của Padding
              ),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sentence.text,
                    style: const TextStyle(fontSize: 13),
                    softWrap: true,
                  ),
                  Obx(() => AnimatedOpacity(
                        opacity: translationController.isTranslated.value
                            ? 1.0
                            : 0.0,
                        duration: const Duration(milliseconds: 300),
                        child: TranslationText(
                          index: index,
                          translationController: translationController,
                        ),
                      )),
                ],
              ),
            )),
        if (!isLeft)
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                const Icon(
                  Icons.person,
                  color: AppColors.secondaryColor,
                  size: 30,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: const Icon(
                    Icons.volume_up_sharp,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class TranslationText extends StatelessWidget {
  final int index;
  final TranslationController translationController;

  const TranslationText(
      {super.key, required this.index, required this.translationController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (!translationController.isTranslated.value) {
        return const SizedBox();
      }

      final translatedText =
          index < translationController.translatedSentence.length
              ? translationController.translatedSentence[index]
              : "";

      return translatedText.isNotEmpty
          ? Text(
              translatedText,
              style: const TextStyle(fontSize: 13, color: Colors.blueGrey),
            )
          : const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Translating...",
                style: TextStyle(fontSize: 13, color: Colors.blueGrey),
              ),
            );
    });
  }
}
