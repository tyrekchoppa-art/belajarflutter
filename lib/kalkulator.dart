import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();
  String hasil = "";

  void tambah() {
    double angka1 = double.tryParse(_firstNumberController.text) ?? 0;
    double angka2 = double.tryParse(_secondNumberController.text) ?? 0;
    double result = angka1 + angka2;
    setState(() {
      hasil = result.toString();
    });
  }

  void kurang() {
    double angka1 = double.tryParse(_firstNumberController.text) ?? 0;
    double angka2 = double.tryParse(_secondNumberController.text) ?? 0;
    double result = angka1 - angka2;
    setState(() {
      hasil = result.toString();
    });
  }

  void kali() {
    double angka1 = double.tryParse(_firstNumberController.text) ?? 0;
    double angka2 = double.tryParse(_secondNumberController.text) ?? 0;
    double result = angka1 * angka2;
    setState(() {
      hasil = result.toString();
    });
  }

  void bagi() {
    double angka1 = double.tryParse(_firstNumberController.text) ?? 0;
    double angka2 = double.tryParse(_secondNumberController.text) ?? 0;
    if (angka2 == 0) {
      setState(() {
        hasil = "Tidak bisa dibagi 0";
      });
      return;
    }
    double result = angka1 / angka2;
    setState(() {
      hasil = result.toString();
    });
  }

  void reset() {
    setState(() {
      _firstNumberController.clear();
      _secondNumberController.clear();
      hasil = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
      ),
      body: Column(
        children: [
          const Text(
            "Kalkulator Page",
            style: TextStyle(
              fontSize: 20, 
              color: Colors.blue, 
              fontStyle: FontStyle.italic
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter first number",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter second number",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: tambah,
                child: const Text("Tambah"),
              ),
              ElevatedButton(
                onPressed: kurang,
                child: const Text("Kurang"),
              ),
              ElevatedButton(
                onPressed: kali,
                child: const Text("Kali"),
              ),
              ElevatedButton(
                onPressed: bagi,
                child: const Text("Bagi"),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Hasil: $hasil",
            style: const TextStyle(
              fontSize: 20, 
              color: Colors.red, 
              fontStyle: FontStyle.italic
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: reset,
            child: const Text("Reset"),
          ),
        ],
      ),
    );
  }
}