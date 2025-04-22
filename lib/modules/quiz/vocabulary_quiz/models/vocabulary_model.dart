class VocabularyModel {
  final int id;
  final int topicId;
  final String word;
  final String meaning;
  final String example;
  final String imgPath;
  final String level;

  VocabularyModel({
    required this.id,
    required this.topicId,
    required this.word,
    required this.meaning,
    required this.example,
    required this.imgPath,
    required this.level,
  });

  factory VocabularyModel.fromJson(Map<String, dynamic> json) {
    return VocabularyModel(
      id: json['id'] as int,
      topicId: json['vocabulary_quiz_topic_id'] as int,
      word: json['word'] as String,
      meaning: json['meaning'] as String,
      example: json['example'] as String,
      imgPath: json['image_path'] as String,
      level: json['level'] as String,
    );
  }
}
