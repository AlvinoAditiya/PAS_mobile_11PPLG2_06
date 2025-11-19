import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/register_controller.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(()=>RegisterController());
  }

}