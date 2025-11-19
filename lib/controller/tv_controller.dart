import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11pplg2_06/api/baseURL.dart';
import 'dart:convert';

import 'package:pas_mobile_11pplg2_06/models/tv_model.dart';

class TvController extends GetxController {
  var tv = <TVmodel>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchAPITV() async{
    const url = "https://api.tvmaze.com/shows/82/episodes ";
    try {
      //kode yang berpotensi error
      isLoading.value = true;
      final response = await http.get(Uri.parse(url));
      print("status code:" + response.statusCode.toString());
      print("json response:" + response.body.toString());

      if(response.statusCode == 200){
        //pasang json response ke model
        final data = jsonDecode(response.body);
        final List standings = data['tvmaze'];
        tv.assignAll(standings.map((e) => TVmodel.fromJson(e),).toList());
      }else{
        Get.snackbar("error", "messege error dari BE");
      }
    } catch (e) {
      //e = exceptiion
      //tampilkan messege error, mengantisipasi crash 

      Get.snackbar("error", e.toString());
    }
    isLoading.value = false;
  }

  Future<void> fetchProducts() async {
    isLoading.value = true;

    final res = await http.get(Uri.parse(BaseURL.tv));
    final list = json.decode(res.body) as List;
    tv.value = list.map((e) => TVmodel.fromJson(e)).toList();

    isLoading.value = false;
  }
}
