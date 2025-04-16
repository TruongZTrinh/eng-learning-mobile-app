import 'package:english_learning_app/modules/home/controllers/expandable_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ExpandableController controller = Get.put(ExpandableController());

  final List<Map<String, dynamic>> lessons = [
    {
      "title": "Tình huống học thử",
      "description": "Vượt qua bài phỏng vấn tuyển dụng",
      "level": "Dễ",
      "lessonCount": 3,
      "questions": [
        "1. Which company do you work at?",
        "2. How long have you been working there?",
        "3. What do you like about our company?"
      ]
    },
    {
      "title": "Công việc hàng ngày",
      "description": "Học cách miêu tả ngày làm việc",
      "level": "Trung bình",
      "lessonCount": 2,
      "questions": [
        "1. Bạn làm gì mỗi sáng?",
        "2. Bạn ăn trưa lúc mấy giờ?",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        return Obx(() {
          final isExpanded = controller.expandedIndex.value == index;
          return Card(
            margin: const EdgeInsets.all(12),
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
                                lesson['title'],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                lesson['description'],
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  Chip(
                                      label:
                                          Text('Cấp độ: ${lesson['level']}')),
                                  const SizedBox(width: 8),
                                  Text('${lesson['lessonCount']} câu hỏi'),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(
                            isExpanded ? Icons.expand_less : Icons.expand_more),
                      ],
                    ),
                  ),
                ),
                // Danh sách câu hỏi khi mở rộng
                if (isExpanded)
                  Column(
                    children: lesson['questions']
                        .map<Widget>((q) => ListTile(
                              leading: const Icon(Icons.play_arrow),
                              title: Text(q),
                            ))
                        .toList(),
                  ),
              ],
            ),
          );
        });
      },
    );
  }
}
