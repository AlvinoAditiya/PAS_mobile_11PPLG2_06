import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/bottomNav_controller.dart';
class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BottomNavController>(()=> BottomNavController());
    
  }

}