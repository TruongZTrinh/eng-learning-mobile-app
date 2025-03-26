import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_option_model.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_question_model.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_quiz_model.dart';
import 'package:english_learning_app/modules/quiz/listening_quiz/models/listening_script_model.dart';

List<ListeningQuizModel> listeningQuizList = [
  const ListeningQuizModel(
    id: "quiz_001",
    title: "Ordering Food at a Restaurant",
    description: "Listen to the conversation and answer the questions.",
    scripts: [
      ListeningScriptModel(
        id: "script_01",
        speaker: "M",
        transcript: "Hi, I'd like to order a burger and fries.",
      ),
      ListeningScriptModel(
        id: "script_02",
        speaker: "F",
        transcript: "Sure! Would you like anything to drink?",
      ),
      ListeningScriptModel(
        id: "script_03",
        speaker: "M",
        transcript: "Yes, a cola, please.",
      ),
      ListeningScriptModel(
        id: "script_04",
        speaker: "F",
        transcript: " Would you like a small, medium, or large drink?",
      ),
      ListeningScriptModel(
        id: "script_05",
        speaker: "M",
        transcript: "I'll take a medium one.",
      ),
      ListeningScriptModel(
        id: "script_06",
        speaker: "F",
        transcript: "Would you like cheese on your burger?",
      ),
      ListeningScriptModel(
        id: "script_07",
        speaker: "M",
        transcript: "Yes, please!",
      ),
      ListeningScriptModel(
        id: "script_08",
        speaker: "F",
        transcript: "Anything else?",
      ),
      ListeningScriptModel(
        id: "script_09",
        speaker: "M",
        transcript: "No, that's all. How much is it?",
      ),
      ListeningScriptModel(
        id: "script_10",
        speaker: "F",
        transcript: "That will be \$8.50.",
      ),
      ListeningScriptModel(
        id: "script_11",
        speaker: "M",
        transcript: "Here you go. Thank you!",
      ),
      ListeningScriptModel(
        id: "script_12",
        speaker: "F",
        transcript: "Thank you! Your food will be ready in a few minutes.",
      ),
    ],
    questions: [
      ListeningQuestionModel(
        id: "q_01",
        scriptIds: ["script_01"],
        questionText: "What does the man order?",
        options: [
          ListeningOptionModel(id: 'opt_1', text: "A pizza and fries"),
          ListeningOptionModel(id: 'opt_2', text: "A burger and fries"),
          ListeningOptionModel(id: 'opt_3', text: "A sandwich and fries"),
        ],
        correctAnswer: "opt_2",
      ),
      ListeningQuestionModel(
        id: "q_02",
        scriptIds: ["script_05"],
        questionText: "What size drink does the man choose?",
        options: [
          ListeningOptionModel(id: 'opt_1', text: "Medium"),
          ListeningOptionModel(id: 'opt_2', text: "Small"),
          ListeningOptionModel(id: 'opt_3', text: "Large"),
        ],
        correctAnswer: "opt_1",
      ),
      ListeningQuestionModel(
        id: "q_03",
        scriptIds: ["script_07"],
        questionText: "Does the man want cheese on his burger?",
        options: [
          ListeningOptionModel(id: 'opt_1', text: "No"),
          ListeningOptionModel(id: 'opt_2', text: "He didn’t say"),
          ListeningOptionModel(id: 'opt_3', text: "Yes"),
        ],
        correctAnswer: "opt_3",
      ),
      ListeningQuestionModel(
        id: "q_04",
        scriptIds: ["script_10"],
        questionText: "How much is the total bill?",
        options: [
          ListeningOptionModel(id: 'opt_1', text: "\$8.50"),
          ListeningOptionModel(id: 'opt_2', text: "\$8.60"),
          ListeningOptionModel(id: 'opt_3', text: "\$10"),
        ],
        correctAnswer: "opt_1",
      ),
      ListeningQuestionModel(
        id: "q_05",
        scriptIds: ["script_12"],
        questionText: "How long will the food take?",
        options: [
          ListeningOptionModel(id: 'opt_1', text: "10 minutes"),
          ListeningOptionModel(id: 'opt_2', text: "A few minutes"),
          ListeningOptionModel(id: 'opt_3', text: "An hour"),
        ],
        correctAnswer: "opt_2",
      ),
    ],
  )
];
