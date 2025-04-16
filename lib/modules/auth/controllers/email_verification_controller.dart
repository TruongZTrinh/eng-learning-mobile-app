import 'package:english_learning_app/constants/api_constants.dart';
import 'package:english_learning_app/shared/audio_helper.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class EmailVerificationController extends GetxController {
  var isLoading = false.obs;
  var isEmailVerified = false.obs;
  var message = ''.obs; // Observable for status messages

  // Send email verification link to the user's email
  Future<void> sendVerificationEmail(String token) async {
    isLoading.value = true;

    try {
      final response = await http.post(
        Uri.parse('$BASE_URL/email/verification-notification'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        message.value = 'Gửi email xác thực thành công!';
      } else {
        message.value = 'Gửi email xác thực không thành công!';
      }
    } catch (error) {
      message.value = 'Có lỗi xảy ra: $error';
    } finally {
      isLoading.value = false;
    }
  }

  // Check mail verification status
  Future<void> checkEmailVerificationStatus(String token) async {
    isLoading.value = true;

    try {
      final response =
          await http.get(Uri.parse('$BASE_URL/verify-email'), headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == 200) {
        await AudioHelper.playAudioFromAsset('correct_sound.mp3');
        isEmailVerified.value = true;
        message.value = 'Email đã được xác thực!';
      } else {
        isEmailVerified.value = false;
        message.value = 'Email chưa được xác thực!';
      }
    } catch (error) {
      message.value = 'Có lỗi xảy ra: $error';
    } finally {
      isLoading.value = false;
    }
  }
}
