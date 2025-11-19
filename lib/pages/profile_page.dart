import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/image/profile.jpg"),
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
                  "Username: ${loginController.username.value}",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                )),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                loginController.logout();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
