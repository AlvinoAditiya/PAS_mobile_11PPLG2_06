import 'package:get/get.dart';
import '../models/tv_model.dart';

class FavoriteController extends GetxController {
  var favorites = <TVmodel>[].obs;

  void toggleFavorite(TVmodel tv) {
    if (favorites.contains(tv)) {
      favorites.remove(tv);
      Get.snackbar("Removed", "${tv.name} dihapus dari favorit");
    } else {
      favorites.add(tv);
      Get.snackbar("Added", "${tv.name} ditambahkan ke favorit");
    }
  }
}
