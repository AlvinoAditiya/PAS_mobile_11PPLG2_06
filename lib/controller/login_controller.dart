import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11pplg2_06/api/baseURL.dart';
import 'package:pas_mobile_11pplg2_06/models/login_model.dart';
import 'package:pas_mobile_11pplg2_06/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginController extends GetxController {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  var isLoading = false.obs;


  Future<void> login() async {
    isLoading.value = true;
    final url = Uri.parse('${BaseURL.login}');

    try {
      final response = await http.post(url, body: {
        'username': usernameController.text,
        'password': passwordController.text,
      });

      if (response.statusCode == 200) {
        final data = loginmodelFromJson(response.body);

        // tampilkan pesan dari server
        Get.snackbar('Info', data.message);

        if (data.status == true) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', data.toString());

          // routing ke main menu
          Get.offAllNamed(AppRoutes.splashscreenPage);
        }
      } else {
        Get.snackbar('Error', response.body);
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
  
}