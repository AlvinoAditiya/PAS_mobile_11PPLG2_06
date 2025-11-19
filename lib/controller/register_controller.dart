import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:pas_mobile_11pplg2_06/api/baseURL.dart';
import 'package:pas_mobile_11pplg2_06/models/register_model.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs;

  TextEditingController usernameC = TextEditingController();
  TextEditingController fullnameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  Future<void> register() async {
    if (usernameC.text.isEmpty ||
        fullnameC.text.isEmpty ||
        emailC.text.isEmpty ||
        passwordC.text.isEmpty) {
      Get.snackbar("Error", "Semua field harus diisi");
      return;
    }

    isLoading.value = true;
    final res = await http.post(Uri.parse(BaseURL.register), body: {
      "username": usernameC.text,
      "full_name": fullnameC.text,
      "email": emailC.text,
      "password": passwordC.text,
    });

    final data = Registermodel.fromJson(json.decode(res.body));
    isLoading.value = false;

    if (data.status) {
      Get.snackbar("Sukses", data.message);
      Get.offAllNamed("/login");
    } else {
      Get.snackbar("Gagal", data.message);
    }
  }
}
