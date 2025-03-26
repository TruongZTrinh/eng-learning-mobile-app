import 'package:english_learning_app/modules/quiz/speaking_quiz/models/speaking_lesson_model.dart';
import 'package:english_learning_app/modules/quiz/speaking_quiz/models/speaking_sentence_model.dart';

final List<SpeakingLessonModel> speakingLessons = [
  const SpeakingLessonModel(
    id: 1,
    name: 'First Day at School',
    imgPath: 'assets/images/speaking_quiz/first_day_at_school.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Hi, my name is Tom. Is this your first day here?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'It’s over there, near Gate 5. Are you traveling alone?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Yes, I’m going to New York for a business trip.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'That’s great! Have you checked your luggage?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Not yet. I’ll do it now. Thanks for your help!',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'You’re welcome! Have a safe flight!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 1,
  ),
  const SpeakingLessonModel(
    id: 2,
    name: 'Group Project',
    imgPath: 'assets/images/speaking_quiz/group_project.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Hey, Jake! Have you started the history project yet?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Not yet. I was waiting for our group to meet.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Let’s divide the work. I can do the research part.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Sounds good! I’ll take care of the presentation slides.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Perfect! Let’s meet on Saturday to put everything together.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Sure! See you then.',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 1,
  ),
  const SpeakingLessonModel(
    id: 3,
    name: 'Asking for Help',
    imgPath: 'assets/images/speaking_quiz/asking_for_help.jpg',
    plays: 0,
    isLocked: true,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'M',
          text:
              'Hi Anna, you’re really good at math. Can you help me with this problem?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Of course! Which part do you find difficult?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'I don’t understand how to solve this equation.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text:
              'Let me show you. First, you need to move this term to the other side.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Oh, I see! That makes sense now.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Glad I could help! Let me know if you have more questions.',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 1,
  ),
  const SpeakingLessonModel(
    id: 4,
    name: 'School Club',
    imgPath: 'assets/images/speaking_quiz/school_club.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Hey Jake, are you in any school clubs?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Yes, I’m in the science club. We do cool experiments.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'That sounds fun! Can I join?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Of course! We meet every Wednesday after school.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Great! I’ll come to the next meeting.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Awesome! You’ll love it.',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 1,
  ),
  const SpeakingLessonModel(
    id: 5,
    name: 'First Day at Work',
    imgPath: 'assets/images/speaking_quiz/first_day_at_work.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Hi! I’m Jack, the new employee.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Welcome, Jack! I’m Lisa. I’ll be showing you around today.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Thank you! This office looks amazing.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes! Let me introduce you to the team.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'That would be great! I’m excited to start working here.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'We’re happy to have you!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 1,
  ),
  const SpeakingLessonModel(
    id: 1,
    name: 'First Day at Work',
    imgPath: 'assets/images/speaking_quiz/first_day_at_work.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Hi! I’m Jack, the new employee.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Welcome, Jack! I’m Lisa. I’ll be showing you around today.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Thank you! This office looks amazing.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes! Let me introduce you to the team.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'That would be great! I’m excited to start working here.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'We’re happy to have you!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 2,
  ),
  const SpeakingLessonModel(
    id: 2,
    name: 'Asking for Help',
    imgPath: 'assets/images/speaking_quiz/asking_for_help_in_work.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Hey Lisa, I have a question about the report format.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Sure! Would you like a single or a double room?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'A single room, please. Does it include breakfast?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes, breakfast is complimentary.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Great! How much is it per night?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'It’s \$80 per night.',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 2,
  ),
  const SpeakingLessonModel(
    id: 3,
    name: 'Lunch Break',
    imgPath: 'assets/images/speaking_quiz/lunch_break.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Jack, do you want to grab lunch together?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Sure! Where do you usually go?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'There’s a nice café nearby. They have great sandwiches.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Sounds good! Let’s go.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Perfect! It’s nice to take a break from work.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'I agree!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 2,
  ),
  const SpeakingLessonModel(
    id: 4,
    name: 'Meeting Discussion',
    imgPath: 'assets/images/speaking_quiz/meeting_discussion.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Lisa, do you think the new strategy will work?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'I think it has potential, but we need more data.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Should we discuss it in the next meeting?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes, and we should also prepare a report with key points.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Good idea! Let’s work on that together.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Sounds like a plan!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 2,
  ),
  const SpeakingLessonModel(
    id: 5,
    name: 'Leaving Work',
    imgPath: 'assets/images/speaking_quiz/leaving_work.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Jack, are you done for the day?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Yes! Finally finished all my tasks.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Great! Do you want to grab a coffee before heading home?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'That sounds nice! Let’s go.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Awesome! A good way to end the day',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Absolutely!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 2,
  ),
  const SpeakingLessonModel(
    id: 1,
    name: 'Grocery Shopping',
    imgPath: 'assets/images/speaking_quiz/grocery_shopping.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Lisa, do we need anything from the store?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes! We need milk, eggs, and bread.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Got it! Should we get some fruits too?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes, let’s get some apples and bananas.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Good idea! Let’s go check out.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Sure!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 3,
  ),
  const SpeakingLessonModel(
    id: 2,
    name: 'Exercising',
    imgPath: 'assets/images/speaking_quiz/exercising.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Hey Jack, do you want to go for a run?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Sounds great! I need some exercise.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Let’s go to the park. It’s nice outside.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Good idea! Let’s warm up first.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes! Stretching is important.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Alright, let’s start!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 3,
  ),
  const SpeakingLessonModel(
    id: 1,
    name: 'At the Airport',
    imgPath: 'assets/images/speaking_quiz/at_the_airport.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'You’re welcome! Have a safe flight!',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'It’s over there, near Gate 5. Are you traveling alone?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes, I’m going to New York for a business trip.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'That’s great! Have you checked your luggage?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Not yet. I’ll do it now. Thanks for your help!',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'You’re welcome! Have a safe flight!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 4,
  ),
  const SpeakingLessonModel(
    id: 2,
    name: 'Booking a Hotel',
    imgPath: 'assets/images/speaking_quiz/booking_a_hotel.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Hello, I’d like to book a room for two nights.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Sure! Would you like a single or a double room?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'A single room, please. Does it include breakfast?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Yes, breakfast is complimentary.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Great! How much is it per night?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'It’s \$80 per night.',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 4,
  ),
  const SpeakingLessonModel(
    id: 3,
    name: 'Asking for Directions',
    imgPath: 'assets/images/speaking_quiz/booking_a_hotel.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Excuse me, can you tell me how to get to the city center?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Sure! You can take the subway or a taxi.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Which one is faster?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'The subway is faster and cheaper.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Thank you! Where is the nearest station?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'It’s just around the corner.',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 4,
  ),
  const SpeakingLessonModel(
    id: 4,
    name: 'Ordering Food in a Restaurant',
    imgPath: 'assets/images/speaking_quiz/ordering_food_in_a_restaurant.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'F', text: '', audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F', text: '', audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F', text: '', audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F', text: '', audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F', text: '', audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F', text: '', audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 4,
  ),
  const SpeakingLessonModel(
    id: 5,
    name: 'Buying Souvenirs',
    imgPath: 'assets/images/speaking_quiz/buying_souvenirs.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Hi! How much is this keychain?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'It’s \$5 each or three for \$12.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'I’ll take three, please.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Sure! Do you need a gift bag?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Yes, please. Thank you!',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'You’re welcome! Enjoy your trip!',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 4,
  ),
  const SpeakingLessonModel(
    id: 1,
    name: 'Buying a New Phone',
    imgPath: 'assets/images/speaking_quiz/buying_a_new_phone.jpg',
    plays: 0,
    isLocked: false,
    sentences: [
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'Hi! I’m looking for a new smartphone.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'Sure! What features are you looking for?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'I want a good camera and long battery life.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'This model has a great camera and a 5000mAh battery.',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'M',
          text: 'That sounds perfect! How much is it?',
          audioPath: 'assets/audios/correct_sound.mp3'),
      SpeakingSentenceModel(
          speaker: 'F',
          text: 'It’s \$699.',
          audioPath: 'assets/audios/correct_sound.mp3'),
    ],
    speakingTopicId: 5,
  ),
];
