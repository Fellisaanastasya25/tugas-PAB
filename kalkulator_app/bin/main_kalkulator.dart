import 'dart:io';
import 'class_kalkulator.dart';

void main() {
  var k = Kalkulator();
  var lanjut = true;

  while (lanjut) {
    try {
      stdout.write("Masukkan angka pertama: ");
      var a = double.parse(stdin.readLineSync()!);

      stdout.write("Masukkan angka kedua  : ");
      var b = double.parse(stdin.readLineSync()!);

      print("\n=== Menu Operasi Hitung ===");
      print("1. Penjumlahan (+)");
      print("2. Pengurangan (-)");
      print("3. Perkalian (×)");
      print("4. Pembagian (÷)");

      stdout.write("Pilih diantara (1-4): ");
      var pilih = int.parse(stdin.readLineSync()!);

      double hasil;
      if (pilih == 1) {
        hasil = k.tambah(a, b);
        print(">> Hasil: $a + $b = $hasil");
      } else if (pilih == 2) {
        hasil = k.kurang(a, b);
        print(">> Hasil: $a - $b = $hasil");
      } else if (pilih == 3) {
        hasil = k.kali(a, b);
        print(">> Hasil: $a × $b = $hasil");
      } else if (pilih == 4) {
        hasil = k.bagi(a, b);
        print(">> Hasil: $a ÷ $b = $hasil");
      } else {
        print("Menu gak tersedia nih, pilih 1-4 aja ya.");
      }
    } catch (e) {
      print("Input salah, coba lagi yang lain. ($e)");
    }

    stdout.write("\nMau hitung lagi operasi lain? (Y/T): ");
    var jawab = stdin.readLineSync();
    if (jawab == null || jawab.toUpperCase() != "Y") {
      lanjut = false;
      print("Program dihentikan, See you again!");
  }
  }
}