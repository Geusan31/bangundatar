import 'package:bangun_datar_kelas_b/controller/lingkaran_controller.dart';
import 'package:bangun_datar_kelas_b/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({Key? key}) : super(key: key);

  final LingkaranController _lingkaranController = Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lingkaran Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/lingkaran.jpg", height: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lingkaran"),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade300, borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Lingkaran adalah suatu bangun datar yang terdiri dari semua titik pada bidang yang memiliki jarak yang sama dengan titik pusatnya."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value) {
                _lingkaranController.jari = double.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Jari",
                  hintText: "Masukkan Jari",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    _lingkaranController.hitungLuas();
                  },
                  child: Text(
                    "Hitung Luas Lingkaran",
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
                    _lingkaranController.hitungKeliling();
                  },
                  child: Text(
                    "Hitung Keliling Lingkaran",
                    style: TextStyle(
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
                  _lingkaranController.hasil.value,
                  style: TextStyle(color: _lingkaranController.textColor.value),
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
