import 'package:get/get.dart';

class DetailedQuestionPageController extends GetxController {
  var isLoading = true.obs;

  // Danh sách trạng thái để theo dõi màu sắc của từng mục
  late RxList<bool> selectedStates;

  @override
  void onInit() {
    super.onInit();
    initLoading();
  }

  void initLoading() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {
      isLoading.value = false;
    });
  }

  // Hàm khởi tạo danh sách trạng thái
  void initializeStates(int itemCount) {
    selectedStates = List<bool>.filled(itemCount, false).obs;
  }

  // Hàm để thay đổi trạng thái của một mục
  void toggleState(int index) {
    selectedStates[index] = !selectedStates[index];
  }
}
