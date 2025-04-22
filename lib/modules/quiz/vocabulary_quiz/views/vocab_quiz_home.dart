import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class VocabQuizHome extends StatelessWidget {
  VocabQuizHome({super.key});

  final VocabQuizController vocabQuizController =
      Get.put(VocabQuizController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Stack(
          children: [
            ListView.builder(
              itemCount: vocabQuizController.topics.length,
              itemBuilder: (context, index) {
                final topic = vocabQuizController.topics[index];
                return GestureDetector(
                  onTap: () {
                    final topicId = topic.id;
                    final topicName = topic.title;
                    vocabQuizController.selectedTopicId.value = topicId;
                    vocabQuizController.selectedTopicName.value = topicName;
                    vocabQuizController.nextPage();
                  },
                  child: Container(
                    constraints: BoxConstraints(
                      minHeight: 100.h,
                      maxHeight: 150.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        colors: [Colors.blue.shade100, Colors.blue.shade300],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          topic.imageUrl,
                          cacheHeight: 320,
                          cacheWidth: 320,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 20.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                topic.title,
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            if (vocabQuizController.isLoading.value)
              Center(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.white,
                  child: const SpinKitThreeBounce(
                    color: Colors.lightBlue,
                    size: 50.0,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
