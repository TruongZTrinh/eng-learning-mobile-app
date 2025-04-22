import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: SizedBox(
            height: 60.h,
            child: TabBar(
              labelColor: Colors.lightGreen,
              labelStyle: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.w400,
              ),
              indicatorColor: Colors.lightGreen,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              tabs: const [
                Tab(
                  text: 'Từ vựng',
                ),
                Tab(
                  text: 'Mẫu câu',
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              child: const Text('Từ vựng'),
            ),
            Container(
              padding: EdgeInsets.all(20.w),
              child: const Text('Mẫu câu'),
            )
          ],
        ),
      ),
    );
  }
}
