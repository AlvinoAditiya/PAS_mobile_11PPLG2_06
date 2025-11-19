// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:pas_mobile_11pplg2_06/controller/favorite.controller.dart';

// class FavoritePage extends StatelessWidget {
//   FavoritePage({super.key});
//   final FavoriteController controller = Get.find<FavoriteController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Favorite")),
//       body: Obx(() {
//         if (controller.favorites.isEmpty) {
//           return const Center(child: Text("Belum ada bookmark"));
//         }

//         return ListView.builder(
//           itemCount: controller.favorites.length,
//           itemBuilder: (context, i) {
//             final p = controller.favorites[i];
//             return Card(
//               margin: const EdgeInsets.all(10),
//               child: ListTile(
//                 leading: Image.network(p.name, width: 50),
//                 title: Text(p.rating.toString()),
//                 subtitle: Text("\$${p.genres}"),
//                 trailing: IconButton(
//                   icon: const Icon(Icons.delete, color: Colors.red),
//                   onPressed: () => controller.deleteFavorite(p.id),
//                 ),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }