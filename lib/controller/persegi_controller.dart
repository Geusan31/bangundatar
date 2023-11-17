import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController {
  int sisi = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas() {
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi * $sisi = $hitung";
    textColor.value = Colors.white;
  }

  void hitungKeliling() {
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan keliling dari $sisi + $sisi + $sisi + $sisi = $hitung";
    textColor.value = Colors.white;
  }
}