import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController {
  num alas = 0;
  num tinggi = 0;
  int sisi = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas() {
    num hitung = 0.5 * alas * tinggi;
    hasil.value = "Hasil Perhitungan luas dari 1/2 * $alas * $tinggi  = $hitung";
    textColor.value = Colors.white;
  }

  void hitungKeliling() {
    int hitung = 3 * sisi;
    hasil.value = "Hasil Perhitungan keliling dari $sisi + $sisi + $sisi = $hitung";
    textColor.value = Colors.white;
  }
}