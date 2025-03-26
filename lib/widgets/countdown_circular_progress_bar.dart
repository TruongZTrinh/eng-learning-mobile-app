import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:english_learning_app/shared/app_colors.dart';

class CountdownController extends GetxController
    with GetTickerProviderStateMixin {
  final int duration;
  final VoidCallback onComplete;

  late AnimationController _animationController;
  RxInt seconds = 0.obs;
  RxDouble progress = 1.0.obs;

  CountdownController({required this.duration, required this.onComplete});

  @override
  void onInit() {
    super.onInit();
    seconds.value = duration;

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: duration),
    )
      ..addListener(() {
        progress.value = 1.0 - _animationController.value;
        seconds.value = (duration * (1.0 - _animationController.value)).ceil();
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          onComplete();
        }
      });
  }

  void stopCountDown() {
    _animationController.stop();
  }

  void startCountDown() {
    _animationController.reset();
    _animationController.forward();
  }

  @override
  void onClose() {
    _animationController.dispose();
    super.onClose();
  }
}

class CountdownCircularProgressBar extends StatelessWidget {
  final int duration;
  final VoidCallback onComplete;

  const CountdownCircularProgressBar(
      {super.key, required this.duration, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    final CountdownController controller = Get.put(
        CountdownController(duration: duration, onComplete: onComplete));

    return GetBuilder<CountdownController>(
      init: controller,
      builder: (_) {
        controller.startCountDown(); // Chỉ gọi khi widget được xây dựng

        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 70.h,
              width: 70.h,
              child: Obx(() => CircularProgressIndicator(
                    value: controller.progress.value,
                    strokeWidth: 8,
                    backgroundColor: AppColors.primaryColor,
                  )),
            ),
            Obx(() => Text(
                  '${controller.seconds.value}',
                  style: TextStyle(fontSize: 30.sp),
                )),
          ],
        );
      },
    );
  }
}
