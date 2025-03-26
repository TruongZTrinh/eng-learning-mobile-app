import 'package:english_learning_app/modules/quiz/listening_quiz/controllers/listening_quiz_controlller.dart';
import 'package:english_learning_app/shared/speech_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListeningQuizPratice extends StatelessWidget {
  const ListeningQuizPratice({super.key});

  @override
  Widget build(BuildContext context) {
    ListeningQuizController listeningQuizController =
        Get.put(ListeningQuizController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Listening Quiz'),
        centerTitle: true,
      ),
      body: Obx(() {
        // Kiểm tra nếu đã tìm thấy câu hỏi liên quan
        if (listeningQuizController.foundRelatedQuestion.value) {
          final currentQuestion = listeningQuizController
              .questions[listeningQuizController.currentQuestionIndex.value];
          final currentScript = listeningQuizController
              .scripts[listeningQuizController.currentScriptIndex.value];

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Question ${listeningQuizController.currentQuestionIndex.value + 1}/${listeningQuizController.questions.length}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      currentQuestion.questionText,
                      style: const TextStyle(fontSize: 16),
                    ),
                    IconButton(
                        onPressed: () => listeningQuizController.speechService
                            .speak(currentScript.transcript,
                                currentScript.speaker),
                        icon: const Icon(Icons.volume_up))
                  ],
                ),
                const SizedBox(height: 20),
                ...currentQuestion.options.map((option) {
                  return ListTile(
                    title: Text(option.text),
                    leading: Radio<String>(
                      value: option.id,
                      groupValue: listeningQuizController.selectedAnswer.value,
                      onChanged: (value) {
                        if (value != null) {
                          listeningQuizController.checkAnswer(value);
                        }
                      },
                    ),
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
                child: Row(
                  children: [
                    Expanded(
                      child: Obx(() {
                        final progress = listeningQuizController.progress.value;

                        return Stack(
                          children: [
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300], // Màu nền

                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              width:
                                  MediaQuery.of(context).size.width * progress,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue, // Màu chạy
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  listeningQuizController.playScriptsUntilQuestion();
                },
                child: const Center(child: Text("Start Listening")),
              ),
            ],
          ),
        );
      }),
    );
  }
}
