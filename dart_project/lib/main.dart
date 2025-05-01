import 'dart:io';

void main() {
  stdout.write('Masukkan usia Anda: ');
  String? inputUsia = stdin.readLineSync();

  if (inputUsia != null && inputUsia.isNotEmpty) {
    try {
      int usia = int.parse(inputUsia);

      if (usia >= 17) {
        print('Selamat! Anda memenuhi syarat untuk memilih.');
      } else {
        print('Maaf, Anda belum memenuhi syarat untuk memilih. Minimal usia adalah 17 tahun.');
      }
    } catch (e) {
      print('Input tidak valid. Harap masukkan angka.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
