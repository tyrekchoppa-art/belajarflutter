import 'package:flutter/material.dart';
import 'package:belajarflutter/Components/custom_textfield.dart';
import 'package:belajarflutter/Controller/kalkulator_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();
    
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Kalkulator"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
               controller: txtAngka1,
              hintText: "Masukkan Angka 1",
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 12),
            CustomTextField(
              controller: txtAngka2,
              hintText: "Masukkan Angka 2",
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 24),
            
            // Baris Tombol Operasi
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);
                controller.tambah(angka1, angka2);
              },
              child: Text("Tambah", style: TextStyle(fontSize: 16)),  
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);
                controller.kurang(angka1, angka2);
              },
              child: Text("Kurang", style: TextStyle(fontSize: 16)),  
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);
                controller.kali(angka1, angka2);
              },
              child: Text("Kali", style: TextStyle(fontSize: 16)),  
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                int angka1 = int.parse(txtAngka1.text);
                int angka2 = int.parse(txtAngka2.text);
                controller.bagi(angka1, angka2);
              },
              child: Text("Bagi", style: TextStyle(fontSize: 16)),  
            ),
            const SizedBox(height: 30),
             ElevatedButton(
            onPressed: () {
              // Fungsi khusus clear/reset ditaruh di sini
              txtAngka1.clear();
              txtAngka2.clear();
              controller.resetHasil();
            },
            child: Text("Clear"),
          ),
        
            // Hasil Kalkulator
            Center(
              child: Obx(
                () => Text(
                  "Hasil: ${controller.hasil}",
                  style: TextStyle(
                    fontSize: 28, 
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[800],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}