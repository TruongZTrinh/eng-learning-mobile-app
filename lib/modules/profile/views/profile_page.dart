import 'package:english_learning_app/shared/token_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // Profile Picture
                CircleAvatar(
                  radius: 50,
                  backgroundImage: Image.asset(
                    'assets/images/avatar.jpg', // Replace with user's profile picture
                  ).image,
                ),
                const SizedBox(height: 16),
                // User Name
                const Text(
                  "Ngoc Tho", // Replace with user's name
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 80),
            // Logout Button
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: "Đăng xuất",
                  middleText: "Bạn có chắc chắn muốn đăng xuất không?",
                  textCancel: "Hủy",
                  textConfirm: "Đồng ý",
                  onConfirm: () async {
                    await TokenService.deleteToken();
                    Get.offAllNamed('/login'); // Navigate to login page
                  },
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Colors.lightBlueAccent, Colors.blue],
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Đăng xuất",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
