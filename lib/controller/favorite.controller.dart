// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:pas_mobile_11pplg2_06/Helper/dbHelper.dart';
// import 'package:pas_mobile_11pplg2_06/models/tv_model.dart';

// class FavoriteController extends GetxController {
//   var favorites = <TVmodel>[].obs;

//   @override
//   void onInit() {
//     loadFavorites();
//     super.onInit();
//   }

//   Future<void> loadFavorites() async {
//     final data = await DBHelper.getTV();
//     favorites.value = data.map((e) => TVmodel(
//       id: e['id'],
//       name: e['name'],
//       image: e['image'],
//       genres: e['genres'],
//     )).toList();
//   }

//   Future<void> addTVmodel(TVmodel p) async {
//     await DBHelper.addTV(p.toJson());
//     loadFavorites();
//   }

//   Future<void> deleteFavorite(int id) async {
//     await DBHelper.deleteTV(id);
//     loadFavorites();
//   }
// }
