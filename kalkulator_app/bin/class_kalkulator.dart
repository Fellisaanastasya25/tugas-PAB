class Kalkulator {
  double tambah(double x, double y) {
    return x + y;
  }
  double kurang(double x, double y) {
    return x - y;
  }
  double kali(double x, double y) {
    var hasil = x * y;
    return hasil;
  }
  double bagi(double x, double y) {
    if (y == 0) {
      throw Exception("Tidak dapat dibagi dengan nol");
    }
    return x/y;
    }
}

