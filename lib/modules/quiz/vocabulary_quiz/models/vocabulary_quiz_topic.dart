class VocabularyQuizTopic {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  VocabularyQuizTopic({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory VocabularyQuizTopic.fromJson(Map<String, dynamic> json) {
    return VocabularyQuizTopic(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['image_path'] as String,
    );
  }
}
