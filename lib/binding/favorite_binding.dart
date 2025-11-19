import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/favorite.controller.dart';

class FavoriteBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<FavoriteController>(()=>FavoriteController());
  }

}