import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController {
  int lebar = 0;
  int panjang = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas() {
    int hitung = panjang * lebar;
    hasil.value = "Hasil Perhitungan luas dari $panjang * $lebar = $hitung";
    textColor.value = Colors.white;
  }

  void hitungKeliling() {
    int hitung = 2 * (lebar + panjang);
    hasil.value = "Hasil Perhitungan keliling dari 2 * ($lebar + $panjang) = $hitung";
    textColor.value = Colors.white;
  }
}