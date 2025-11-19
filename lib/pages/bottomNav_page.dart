import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/bottomNav_controller.dart';



class BottomNavPage extends StatelessWidget {
  BottomNavPage({super.key});

  // pakai controller dari BottomNavController, bukan BottomNavPage
  final bottomNavController = Get.find<BottomNavController>();
  

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: bottomNavController.pages[bottomNavController.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            onTap: bottomNavController.changePage,
            currentIndex: bottomNavController.selectedIndex.value,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.tv), label: "DaftarTV"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        ));
  }
}
