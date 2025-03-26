import 'package:english_learning_app/modules/quiz/speaking_quiz/controllers/speaking_quiz_controller.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/data/speaking_topic_data.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/views/speaking_lesson_list.dart';
import 'package:english_learning_app/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpeakingQuizPage extends StatelessWidget {
  const SpeakingQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SpeakingQuizController speakingQuizController =
        Get.find<SpeakingQuizController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.secondaryColor,
        elevation: 2,
        shadowColor: Colors.grey.withAlpha((0.5 * 255).toInt()),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Speaking Quiz',
          textScaler: TextScaler.linear(1.2),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        return IndexedStack(
          index: speakingQuizController.isLoading.value ? 0 : 1,
          children: [
            Center(
              child: Container(
                child: const CircularProgressIndicator(),
              ),
            ),
            DefaultTabController(
              length: speakingTopics.length,
              child: Column(
                children: [
                  TabBar(
                    tabs: speakingTopics
                        .map((topic) => Tab(text: topic.name))
                        .toList(),
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                    indicator: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20.r))),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorAnimation: TabIndicatorAnimation.elastic,
                    dividerColor: Colors.transparent,
                    labelColor: Colors.white,
                  ),
                  Expanded(
                      child: TabBarView(
                          children: speakingTopics
                              .map((topic) =>
                                  SpeakingLessonList(speakingTopicId: topic.id))
                              .toList())),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
