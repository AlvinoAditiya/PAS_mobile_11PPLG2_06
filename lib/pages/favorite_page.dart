import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/favorite.controller.dart';
import '../models/tv_model.dart' hide Image;

class FavoritePage extends StatelessWidget {
  FavoritePage({super.key});
  final FavoriteController favController = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite TV Shows"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Obx(() {
        if (favController.favorites.isEmpty) {
          return const Center(
            child: Text(
              "Belum ada favorit",
              style: TextStyle(fontSize: 18),
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: favController.favorites.length,
          itemBuilder: (context, index) {
            final tv = favController.favorites[index];

            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Image.network(tv.image.medium, width: 50, fit: BoxFit.cover),
                title: Text(tv.name),
                subtitle: Text("Rating: ${tv.rating.average ?? 'N/A'}"),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => favController.toggleFavorite(tv),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
