import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:bangun_datar_kelas_b/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({Key? key}) : super(key: key);

  final PersegiPanjangController _persegiPanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang Page"),
      ),
      body: ListView(
        children: [
          Image.asset("assets/persegi_panjang.jpg", height: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Persegi Panjang"),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            onChanged: (value) {
                              _persegiPanjangController.panjang = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Panjang",
                                hintText: "Masukkan Panjang",
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                border: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.blue),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            onChanged: (value) {
                              _persegiPanjangController.lebar = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Lebar",
                                hintText: "Masukkan Lebar",
                                hintStyle: TextStyle(color: Colors.grey.shade400),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 8),
                                border: const OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                    BorderSide(width: 1, color: Colors.blue),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _persegiPanjangController.hitungLuas();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                        ),
                        child: const Text(
                          "Hitung Luas Persegi Panjang",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _persegiPanjangController.hitungKeliling();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.yellow),
                        ),
                        child: const Text(
                          "Hitung Keliling Persegi Panjang",
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            height: 180,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.orange.shade300, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              children: [
                const Center(child: Text("Hasil:")),
                Obx(() => Text(
                  _persegiPanjangController.hasil.value,
                  style: TextStyle(color: _persegiPanjangController.textColor.value),
                )),
                const Center(child: Text("================================")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
