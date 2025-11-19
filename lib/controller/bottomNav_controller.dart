import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/pages/favorite_page.dart';
import 'package:pas_mobile_11pplg2_06/pages/tv_page.dart';


class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final pages = [
    TvPage(),     
         
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}