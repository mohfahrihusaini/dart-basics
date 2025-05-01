import 'dart:io';

void main() {
  stdout.write('Masukkan angka dalam bentuk string: ');
  String? input = stdin.readLineSync();
  
  if (input != null) {
    try {
      int angka = int.parse(input);
      print('Angka yang dikonversi: $angka');
    } catch (e) {
      print('Input tidak valid! Harap masukkan angka.');
    }
  }
}
