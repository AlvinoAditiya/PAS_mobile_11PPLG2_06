import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/tv_controller.dart';

class TvBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<TvController>(()=> TvController());
  }

}