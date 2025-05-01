import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah angka: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int angka = int.parse(input);

      // Konversi kondisi menjadi kategori
      int kategori;
      if (angka > 0) {
        kategori = 1;
      } else if (angka < 0) {
        kategori = -1;
      } else {
        kategori = 0;
      }

      // Gunakan switch-case
      switch (kategori) {
        case 1:
          print('Angka tersebut adalah positif.');
          break;
        case -1:
          print('Angka tersebut adalah negatif.');
          break;
        case 0:
          print('Angka tersebut adalah nol.');
          break;
        default:
          print('Kesalahan tidak terduga.');
      }
    } catch (e) {
      print('Input tidak valid. Harap masukkan angka.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
