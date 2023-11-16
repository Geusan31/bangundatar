import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Home Page", style: TextStyle(
            color: Colors.white,
          )),
        ),
        backgroundColor: Color(0xFF17FFA5),
      ),
      body: ListView(
        children: [
            Row(
              children: [
                CustomMenu(imageAsset: "assets/persegi.jpg", title: "Persegi"),
                CustomMenu(imageAsset: "assets/persegi.jpg", title: "Persegi"),
                CustomMenu(imageAsset: "assets/persegi.jpg", title: "Persegi"),
              ],
            ),
            Row(
              children: [
                CustomMenu(imageAsset: "assets/persegi_panjang.jpg", title: "Persegi Panjang"),
                CustomMenu(imageAsset: "assets/persegi_panjang.jpg", title: "Persegi Panjang"),
                CustomMenu(imageAsset: "assets/persegi_panjang.jpg", title: "Persegi Panjang"),
              ],
            ),
            Row(
              children: [
                CustomMenu(imageAsset: "assets/lingkaran.jpg", title: "Lingkaran"),
                CustomMenu(imageAsset: "assets/lingkaran.jpg", title: "Lingkaran"),
                CustomMenu(imageAsset: "assets/lingkaran.jpg", title: "Lingkaran"),
              ],
            ),
            Row(
              children: [
                CustomMenu(imageAsset: "assets/segitiga.jpg", title: "Segitiga"),
                CustomMenu(imageAsset: "assets/segitiga.jpg", title: "Segitiga"),
                CustomMenu(imageAsset: "assets/segitiga.jpg", title: "Segitiga"),
              ],
            ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: Colors.green,
          child: Column(
            children: [
              Image.asset(imageAsset, height: 150),
              Text(title, style: TextStyle(
                color: Colors.white
              )),
            ],
          )
      ),
    );
  }
}
