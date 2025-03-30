import 'package:english_learning_app/modules/quiz/listening_quiz/controllers/listening_quiz_controlller.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ListeningQuizPratice extends StatelessWidget {
  const ListeningQuizPratice({super.key});

  @override
  Widget build(BuildContext context) {
    ListeningQuizController listeningQuizController =
        Get.put(ListeningQuizController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listening Quiz',
          textScaler: TextScaler.linear(1.2),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        shadowColor: Colors.grey.withAlpha((0.5 * 255).toInt()),
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: AppColors.secondaryColor,
      ),
      body: Obx(() {
        // Kiểm tra nếu đã tìm thấy câu hỏi liên quan
        if (listeningQuizController.foundRelatedQuestion.value) {
          final currentQuestion = listeningQuizController
              .questions[listeningQuizController.currentQuestionIndex.value];
          final currentScript = listeningQuizController
              .scripts[listeningQuizController.currentScriptIndex.value];
          // print("Current script: $currentScript");
          // print("Current question: $currentQuestion");

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Question ${listeningQuizController.currentQuestionIndex.value + 1}/${listeningQuizController.questions.length}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      currentQuestion.questionText,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      softWrap: true,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () => listeningQuizController.speechService
                        .speak(currentScript.transcript, currentScript.speaker),
                    icon: const Icon(Icons.volume_up)),
                const SizedBox(height: 20),
                ...currentQuestion.options.map((option) {
                  return RadioListTile<String>(
                    title: Text(option.text),
                    value: option.id,
                    groupValue: listeningQuizController.selectedAnswer.value,
                    onChanged: (value) {
                      if (value != null) {
                        listeningQuizController.checkAnswer(value);
                      }
                    },
                  );
                }),
              ],
            ),
          );
        }

        // Nếu chưa tìm thấy câu hỏi, hiển thị danh sách scripts

        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: listeningQuizController.visibleScripts.length,
                  itemBuilder: (context, index) {
                    return Obx(() {
                      var script = listeningQuizController.scripts[index];

                      return Row(
                        mainAxisAlignment: script.speaker == "M"
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.end,
                        children: [
                          if (script.speaker == "F" &&
                              listeningQuizController.isSpeakingList[index])
                            const SpinKitWave(
                              color: Colors.blue,
                              size: 40,
                            ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.all(2),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [
                                Colors.blue,
                                Colors.lightBlueAccent,
                              ]),
                            ),
                            child: script.speaker == "F"
                                ? SvgPicture.asset(
                                    "assets/images/listening_quiz/female.svg")
                                : SvgPicture.asset(
                                    "assets/images/listening_quiz/male.svg"),
                          ),
                          const SizedBox(width: 10),
                          if (script.speaker == "M" &&
                              listeningQuizController.isSpeakingList[index])
                            const SpinKitWave(
                              color: Colors.blue,
                              size: 40,
                            ),
                        ],
                      );
                    });
                  },
                ),
              ),
              InkWell(
                onTap: listeningQuizController.isButtonEnabled.value
                    ? () {
                        listeningQuizController.playScriptsUntilQuestion();
                      }
                    : null,
                child: Ink(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.blue, Colors.lightBlueAccent]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Start Listening",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
