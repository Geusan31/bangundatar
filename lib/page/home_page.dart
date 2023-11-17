import 'package:bangun_datar_kelas_b/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_panjang_page.dart';
import 'package:bangun_datar_kelas_b/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Home Page",
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        backgroundColor: const Color(0xFF17FFA5),
      ),
      body: ListView(
        children: [
          Row(children: [
            Expanded(
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PersegiPage()));
                  },
                  child: CustomMenu(
                      imageAsset: "assets/persegi.jpg", title: "Persegi")),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
                },
                child: CustomMenu(
                    imageAsset: "assets/persegi_panjang.jpg",
                    title: "Persegi Panjang"),
              ),
            ),
          ]),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SegitigaPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/segitiga.jpg",
                          title: "Segitiga"))),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LingkaranPage()));
                    },
                      child: CustomMenu(
                          imageAsset: "assets/lingkaran.jpg",
                          title: "Lingkaran"))),
            ],
          )
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
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
              Image.asset(imageAsset, height: 300),
              Text(title, style: const TextStyle(color: Colors.white)),
            ],
          )),
    );
  }
}
