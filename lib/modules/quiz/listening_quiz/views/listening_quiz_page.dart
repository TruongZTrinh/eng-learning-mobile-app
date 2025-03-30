import 'package:english_learning_app/modules/quiz/listening_quiz/views/listening_quiz_pratice.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:english_learning_app/shared/speech_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListeningQuizPage extends StatelessWidget {
  ListeningQuizPage({super.key});

  SpeechService speechService = Get.put(SpeechService());

  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () {
              Get.to(() => const ListeningQuizPratice());
            },
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(height: 20);
              },
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                        colors: [Colors.lightBlueAccent, Colors.blue]),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Lesson ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.black26,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black26,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black26,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
