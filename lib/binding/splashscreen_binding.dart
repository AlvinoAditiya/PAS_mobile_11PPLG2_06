import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/splashscreen.controller.dart';

class SplashscreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashscreenController>(()=>SplashscreenController());
  }

}