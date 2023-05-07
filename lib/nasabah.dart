class Nasabah {
  String nama;
  String alamat;
  double saldo = 0;

  Nasabah({
    required this.nama,
    required this.alamat,
  });

  void simpan(int jumlah) {
    saldo += jumlah;
  }

  void ambil(int jumlah) {
    saldo -= jumlah;
  }
}
