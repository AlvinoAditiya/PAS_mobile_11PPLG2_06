import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/favorite.controller.dart';
import '../controller/tv_controller.dart';
import '../models/tv_model.dart' hide Image;

class TvPage extends StatelessWidget {
  TvPage({super.key});
  final TvController controller = Get.put(TvController());
  final FavoriteController favController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar TV Shows"),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          return RefreshIndicator(
            onRefresh: () async {
              controller.fetchProducts();
              await Future.delayed(const Duration(seconds: 1));
            },
            child: ListView.builder(
              itemCount: controller.tv.length,
              itemBuilder: (context, index) {
                final tv = controller.tv[index];
                final isFav = favController.favorites.contains(tv);
                final genreText = tv.genres.isNotEmpty ? tv.genres.join(', ') : 'Unknown';

                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Image.network(tv.image.medium, width: 50, fit: BoxFit.cover),
                    title: Text(tv.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rating: ${tv.rating.average ?? 'N/A'}"),
                        const SizedBox(height: 4),
                        if (tv.genres.isNotEmpty)
                          Text(
                            "Genre: ${tv.genres.map((g) => g.toString().replaceAll('Genre.', '')).join(', ')}",
                            style: const TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                      ],
                    ),





                    trailing: IconButton(
                      icon: Icon(
                        isFav ? Icons.bookmark : Icons.bookmark_border,
                        color: isFav ? Colors.blue : null,
                      ),
                      onPressed: () => favController.toggleFavorite(tv),
                    ),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
