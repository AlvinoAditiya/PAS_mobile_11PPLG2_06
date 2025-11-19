import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    checkLogin(); 
  }

  checkLogin()async{
    final prefs = await SharedPreferences.getInstance();
    await Future.delayed( Duration(seconds: 5));
    if(prefs.getString("token") != null){
      Get.offAllNamed(AppRoutes.bottomNavPage);
    }else(){
      //route ke login karena masih kosong
      Get.offAllNamed(AppRoutes.loginPage);
    };
  }
}