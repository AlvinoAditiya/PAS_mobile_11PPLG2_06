import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/login_controller.dart';
import 'package:pas_mobile_11pplg2_06/widget/custom_button.dart';
import 'package:pas_mobile_11pplg2_06/widget/custom_textfield.dart';
import '../routes/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final LoginController controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login API')),
       body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Username Reusable Input
            CustomTextfiled(
              controller: controller.usernameController,
              label: "Username",
              labelColor: Colors.deepPurple,
              pass: false,
              isNumber: false,
            ),
            const SizedBox(height: 16),

            // Password Reusable Input
            CustomTextfiled(
              controller: controller.passwordController,
              label: "Password",
              labelColor: Colors.deepPurple,
              pass: true,
              isNumber: false,
            ),
            const SizedBox(height: 24),

            Obx(() => controller.isLoading.value
                ? const CircularProgressIndicator()
                : CustomButton(
                    myText: "Login",
                    myTextColor: const Color.fromARGB(255, 0, 0, 0),
                    onPressed: () => controller.login(),
                  )),
            TextButton(
              onPressed: () => Get.toNamed(AppRoutes.registerPage),
              child: const Text("Belum punya akun? Register"),
            ),
          ],
        ),
      ),
    );
  }
}