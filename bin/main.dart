import 'dart:convert';

import 'package:dart_app_hewan/dart_app_hewan.dart' as dart_app_hewan;
import 'package:dart_app_hewan/kucing.dart';
import 'package:dart_app_hewan/mahasiswa.dart';
import 'package:dart_app_hewan/nasabah.dart';

void main() {
  // print('Hello world: ${dart_app_hewan.calculate()}!');
  /*
    #1
    1. Buatlah sebuah class bernama Kucing dengan
    atribut nama dan umur.
    2. Buatlah sebuah objek dari class Kucing dengan
    nama kucing1 dengan nilai atribut nama adalah
    "Meong" dan umur adalah 3 tahun.
    3. Tampilkan nilai atribut dari objek kucing1
    menggunakan method print.
  */

  print("~~~ #1 ~~~");
  Kucing kucing1 = Kucing(nama: "Meong", umur: 3);
  print("Nama: ${kucing1.nama}\nUmur: ${kucing1.umur} tahun");

  print("Nama: ${kucing1.nama}\n"
      "Umur: ${kucing1.umur}");

  /*
    #2
    1. Buatlah sebuah class bernama Mahasiswa dengan atribut
    nama, jurusan, dan angkatan.
    2. Buatlah constructor default pada class Mahasiswa.
    3. Buatlah constructor parameterized pada class Mahasiswa
    dengan parameter nama, jurusan, dan angkatan.
    4. Buatlah constructor named pada class Mahasiswa dengan
    nama fromJson yang menerima parameter jsonString dan
    mengembalikan objek Mahasiswa yang diinisialisasi
    dengan nilai atribut dari jsonString.
  */

  print("~~~ #2 ~~~");
  String dataMahasiswa = '{"nama": "Ak", "jurusan": "IT", "angkatan": "2016"}';
  Map<String, dynamic> jsonMahasiswa = jsonDecode(dataMahasiswa);

  Mahasiswa mahasiswa = Mahasiswa.fromJson(jsonMahasiswa);

  print("Nama: ${mahasiswa.nama}\n"
      "Jurusan: ${mahasiswa.jurusan}\n"
      "Angkatan: ${mahasiswa.angkatan}");

  /*
    #3
    1. Buatlah sebuah class bernama Nasabah dengan atribut nama, alamat, dan saldo.
    2. Buatlah constructor parameterized pada class Nasabah dengan parameter nama
    dan alamat, dan memberikan nilai awal saldo adalah 0.
    3. Buatlah method simpan pada class Nasabah yang menerima parameter jumlah dan
    menambahkan jumlah ke saldo.
    4. Buatlah method ambil pada class Nasabah yang menerima parameter jumlah dan
    mengurangi jumlah dari saldo.
    5. Buatlah objek nasabah1 dan nasabah2 dari class Nasabah dengan nilai atribut
    masing-masing.
    6. Lakukan beberapa transaksi dengan method simpan dan ambil pada objek
    nasabah1 dan nasabah2.
    7. Tampilkan nilai saldo terakhir dari objek nasabah1 dan nasabah2 menggunakan
    method print.
  */

  print("~~~ #3 ~~~");
  Nasabah nasabah1 = Nasabah(nama: "AK", alamat: "Tangerang");
  Nasabah nasabah2 = Nasabah(nama: "ZT", alamat: "Jakarta");

  nasabah1.simpan(1000);
  nasabah1.ambil(100);
  nasabah1.simpan(2000);
  nasabah1.ambil(200);
  nasabah2.simpan(2000);
  nasabah2.ambil(200);
  nasabah2.simpan(7000);
  nasabah2.ambil(500);

  print("Saldo terakhir nasabah1: ${nasabah1.saldo}\n"
      "Saldo terakhir nasabah2: ${nasabah2.saldo}");
}
