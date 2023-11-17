import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController {
  num jari = 0;
  num phi = 3.14;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);

  void hitungLuas() {
    num hitung = phi * jari * jari;
    hasil.value = "Hasil Perhitungan luas dari $phi * $jari * $jari = $hitung";
    textColor.value = Colors.white;
  }

  void hitungKeliling() {
    num hitung = 2 * phi * jari;
    hasil.value = "Hasil Perhitungan keliling dari 2 * $phi * $jari = $hitung";
    textColor.value = Colors.white;
  }
}