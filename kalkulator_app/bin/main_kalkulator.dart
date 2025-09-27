import 'dart:io';
import 'class_kalkulator.dart';

void main() {
  var kal = Kalkulator();
  var lanjut = true;

  while (lanjut) {
    try {
      stdout.write("Masukkan angka pertama: ");
      var a = double.parse(stdin.readLineSync()!);

      stdout.write("Masukkan angka kedua  : ");
      var b = double.parse(stdin.readLineSync()!);

      print("Pilihan operasi hitung : ");
      print("1. Tambah (+)");
      print("2. Kurang (-)");
      print("3. Kali (×)");
      print("4. Bagi (÷)");

      stdout.write("Pilih antara (1-4) ya: ");
      var pilih = int.parse(stdin.readLineSync()!);

      double hasil;
      if (pilih == 1) {
        hasil = kal.tambah(a, b);
        print("Hasil: $a + $b = $hasil");
      } else if (pilih == 2) {
        hasil = kal.kurang(a, b);
        print("Hasil: $a - $b = $hasil");
      } else if (pilih == 3) {
        hasil = kal.kali(a, b);
        print("Hasil: $a × $b = $hasil");
      } else if (pilih == 4) {
        hasil = kal.bagi(a, b);
        print("Hasil: $a ÷ $b = $hasil");
      } else {
        print("Pilihan tidak tersedia nih, pilih antara (1-4) aja ya.");
      }
    } catch (e) {
      print("Angka salah, coba lagi yang lain. ($e)");
    }

    stdout.write("Mau coba operasi lain (Y/T)?: ");
    var jawab = stdin.readLineSync();
    if (jawab == null || jawab.toUpperCase() != "Y") {
      lanjut = false;
      print("Operasi dihentikan, see you again!");
  }
  }
}
