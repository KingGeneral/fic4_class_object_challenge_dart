class Mahasiswa {
  String nama;
  String jurusan;
  String angkatan;
  Mahasiswa({
    required this.nama,
    required this.jurusan,
    required this.angkatan,
  });

  factory Mahasiswa.fromJson(Map<String, dynamic> json) => Mahasiswa(
        nama: json["nama"],
        jurusan: json["jurusan"],
        angkatan: json["angkatan"],
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "jurusan": jurusan,
        "angkatan": angkatan,
      };
}
