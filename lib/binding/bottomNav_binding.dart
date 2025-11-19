import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/bottomNav_controller.dart';
import 'package:pas_mobile_11pplg2_06/controller/tv_controller.dart';

class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    // inject homecontroller, historycontroller, profilecontroller
    Get.lazyPut<BottomNavController>(()=> BottomNavController());
    Get.lazyPut<TvController>(()=> TvController());
    
  }

}