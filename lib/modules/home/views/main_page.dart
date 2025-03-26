import 'package:english_learning_app/modules/exercise/views/exercise_page.dart';
import 'package:english_learning_app/modules/home/controllers/bottom_navigation_controller.dart';
import 'package:english_learning_app/modules/home/views/home_page.dart';
import 'package:english_learning_app/modules/quiz/views/quiz_page.dart';
import 'package:english_learning_app/modules/speaking/views/speaking_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  final BottomNavigationController navigationController =
      Get.put(BottomNavigationController());
  MainPage({super.key});

  List<Widget> pages = [
    const HomePage(),
    const QuizPage(),
    const ExercisePage(),
    const SpeakingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(13.0.r),
          child: SvgPicture.asset(
            'assets/images/fire.svg',
            colorFilter: const ColorFilter.mode(Colors.red, BlendMode.srcIn),
          ),
        ),
        title: const Center(child: Text('CTU EngLearning')),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 10.w),
              child: CircleAvatar(
                radius: 25.r,
                backgroundImage: const AssetImage('assets/images/avatar.jpg'),
              ))
        ],
      ),
      body: Obx(
        () => pages[navigationController.pageIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
            selectedIndex: navigationController.pageIndex.value,
            onDestinationSelected: (index) {
              navigationController.changeTabIndex(index);
            },
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/images/house-door-fill.svg',
                  width: 27.w,
                  height: 27.h,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/images/question-circle-fill.svg',
                  width: 27.w,
                  height: 27.h,
                ),
                label: 'Quiz',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/images/journal-bookmark-fill.svg',
                  width: 27.w,
                  height: 27.h,
                ),
                label: 'Ôn tập',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/images/people-fill.svg',
                  width: 27.w,
                  height: 27.h,
                ),
                label: 'Luyện nói',
              ),
            ]),
      ),
    );
  }
}
