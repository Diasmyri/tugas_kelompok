double hitungDiskon(double totalBelanja, bool punyaMembership) {
  if (totalBelanja < 100000) {
    return 0.0;
  }
  if (punyaMembership) {
    return 0.15; // 15%
  } else {
    return 0.10; // 10%
  }
}

double hitungPotongan(double persenDiskon, double totalBelanja) {
  double potongan = persenDiskon * totalBelanja;
  double batasMaksimal = 25000;
  if (potongan > batasMaksimal) {
    return batasMaksimal;
  }
  return potongan;
}

double hitungTotalBayar(double totalBelanja, bool punyaMembership) {
  double persen = hitungDiskon(totalBelanja, punyaMembership);
  double potongan = hitungPotongan(persen, totalBelanja);
  return totalBelanja - potongan;
}

void main() {
  print("Belanja 80rb,  non-member : Rp ${hitungTotalBayar(80000, false)}");
  print("Belanja 150rb, non-member: Rp ${hitungTotalBayar(150000, false)}");
  print("Belanja 150rb, member    : Rp ${hitungTotalBayar(150000, true)}");
  print("Belanja 300rb, member    : Rp ${hitungTotalBayar(300000, true)}");
}