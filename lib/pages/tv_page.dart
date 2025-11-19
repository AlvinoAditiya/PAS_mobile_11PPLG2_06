import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_06/controller/tv_controller.dart';
import 'package:pas_mobile_11pplg2_06/models/tv_model.dart';

class TvPage extends StatelessWidget {
  TvPage({super.key});
  final TvController controller = Get.put(TvController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar TV Shows'),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(() {
          if(controller.isLoading.value){
            return Center(child: CircularProgressIndicator(),);
          }

          // Tambahkan RefreshIndicator di sini
          return RefreshIndicator(
            onRefresh: () async {
              controller.fetchAPITV();
              await Future.delayed(Duration(seconds: 1)); // Simulasi waktu tunggu
            },
            child: ListView.builder(
              itemCount: controller.tv.length,
              itemBuilder: (context, index) {
                final team = controller.tv[index];
                return Card(
                  child: ListTile(
                    title: Text(team.id.toString() +". " + team.name),
                    leading: CircleAvatar(backgroundImage: NetworkImage(team.image.medium), radius: 25,),
                    subtitle: Text("Rating: " + team.rating.average.toString()),
                    
                  ),
                );
              },
            ),
          );
        },)
      )
    );
  }
}