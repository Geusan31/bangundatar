import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:bangun_datar_kelas_b/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({Key? key}) : super(key: key);

  final SegitigaController _segitigaController = Get.put(SegitigaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga Page"),
      ),
      body: ListView(
        children: [
          Image.asset("assets/segitiga.jpg", height: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Segitiga"),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Segitiga adalah poligon dengan tiga sisi dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri dengan puncak A, B, dan C direpresentasikan sebagai segitiga ABC."),
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
                              _segitigaController.alas = double.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Alas",
                                hintText: "Masukkan Alas",
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
                              _segitigaController.tinggi = double.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Tinggi",
                                hintText: "Masukkan Tinggi",
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
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            onChanged: (value) {
                              _segitigaController.sisi = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Sisi",
                                hintText: "Masukkan sisi",
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
                              _segitigaController.sisi = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Sisi",
                                hintText: "Masukkan Sisi",
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
                              _segitigaController.sisi = int.parse(value);
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Sisi",
                                hintText: "Masukkan Sisi",
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
                          _segitigaController.hitungLuas();
                        },
                        child: Text(
                          "Hitung Luas Segitiga",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          _segitigaController.hitungKeliling();
                        },
                        child: Text(
                          "Hitung Keliling Segitiga",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.yellow),
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
                Center(child: Text("Hasil:")),
                Obx(() => Text(
                  _segitigaController.hasil.value,
                  style: TextStyle(color: _segitigaController.textColor.value),
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
