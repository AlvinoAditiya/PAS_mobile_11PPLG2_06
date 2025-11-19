import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pas_mobile_11pplg2_06/controller/register_controller.dart';
import 'package:pas_mobile_11pplg2_06/widget/custom_button.dart';
import 'package:pas_mobile_11pplg2_06/widget/custom_textfield.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final RegisterController controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextfiled(
              controller: controller.fullnameC,
              label: "Full Name",
              labelColor: Colors.black,
              pass: false,
              isNumber: false,
            ),
            CustomTextfiled(
              controller: controller.emailC,
              label: "Email",
              labelColor: Colors.black,
              pass: false,
              isNumber: false,
            ),
            CustomTextfiled(
              controller: controller.usernameC,
              label: "Username",
              labelColor: Colors.black,
              pass: false,
              isNumber: false,
            ),
            CustomTextfiled(
              controller: controller.passwordC,
              label: "Password",
              labelColor: Colors.black,
              pass: true,
              isNumber: false,
            ),
            const SizedBox(height: 20),
            Obx(() => controller.isLoading.value
                ? const CircularProgressIndicator()
                : CustomButton(
                    myText: "Register",
                    myTextColor: const Color.fromARGB(255, 7, 6, 6),
                    onPressed: () => controller.register(),
                  )),
          ],
        ),
      ),
    );
  }
}