import 'package:english_learning_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:english_learning_app/modules/quiz/vocabulary_quiz/controllers/vocab_quiz_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  Get.put(VocabQuizController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'CTU EngLearning app',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
            fontFamily: 'Readex Pro',
          ),
          initialRoute: AppRoutes.main,
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}
