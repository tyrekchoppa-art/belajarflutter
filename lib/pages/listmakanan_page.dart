import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajarflutter/Controller/listmakanan_controller.dart';
import 'package:belajarflutter/models/makanan_model.dart';
import 'package:belajarflutter/pages/detailmakanan_page.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 255, 254),

      appBar: AppBar(
        title: const Text(
          "List Makanan",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 255, 13),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 2,
      ),

      body: Container(
        margin: const EdgeInsets.all(10),

        child: ListView.builder(
          itemCount: controller.listMakanan.length,

          itemBuilder: (context, index) {
            final MakananModel makanan =
                controller.listMakanan[index];

            return Card(
              color: const Color.fromARGB(255, 60, 245, 56),
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 10),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),

              child: ListTile(
                contentPadding: const EdgeInsets.all(10),

                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: Image.network(
                    makanan.gambar,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,

                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 70,
                        height: 70,
                        color: Colors.orange[100],
                        child: const Icon(
                          Icons.fastfood,
                          size: 35,
                          color: Colors.orange,
                        ),
                      );
                    },
                  ),
                ),

                title: Text(
                  makanan.namaMakanan,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    makanan.hargaMakanan,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.orange,
                ),

                onTap: () {
                  Get.to(
                    () => DetailMakananPage(
                      makanan: makanan,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
