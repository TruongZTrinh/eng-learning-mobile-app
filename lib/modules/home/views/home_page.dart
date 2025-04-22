import 'package:english_learning_app/modules/home/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }

      return ListView.builder(
        itemCount: controller.lessons.length,
        itemBuilder: (context, index) {
          final lesson = controller.lessons[index];
          return Obx(() {
            final isExpanded = controller.expandedIndex.value == index;

            return Card(
              margin: const EdgeInsets.all(12),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => controller.toggle(index),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          // Icon đại diện
                          const Icon(Icons.school,
                              size: 36, color: Colors.blueAccent),
                          const SizedBox(width: 12),
                          // Thông tin bài học
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  lesson.title,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  lesson.description,
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Chip(
                                        label: Text('Cấp độ: ${lesson.level}')),
                                    const SizedBox(width: 8),
                                    Text('${lesson.questions.length} câu hỏi'),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Icon(isExpanded
                              ? Icons.expand_less
                              : Icons.expand_more),
                        ],
                      ),
                    ),
                  ),
                  // Danh sách câu hỏi khi mở rộng
                  if (isExpanded)
                    Column(
                      children: lesson.questions
                          .map<Widget>((question) => ListTile(
                                leading: const Icon(Icons.play_arrow),
                                title: Text(question.questionText),
                                onTap: () {
                                  // Xử lý khi người dùng nhấn vào câu hỏi
                                  try {
                                    Get.toNamed('/detailedQuestion',
                                        arguments: question);
                                  } catch (e) {
                                    print(
                                        'Error navigating to question detail: $e');
                                  }
                                },
                              ))
                          .toList(),
                    ),
                ],
              ),
            );
          });
        },
      );
    });
  }
}
