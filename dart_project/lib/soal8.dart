import 'dart:io';

void main() {
  stdout.write('Masukkan sebuah angka: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int angka = int.parse(input);
      int jumlahDigit = 0;

      // Ubah ke nilai absolut agar bisa menghitung digit dari angka negatif
      angka = angka.abs();

      // Khusus jika angka adalah 0
      if (angka == 0) {
        jumlahDigit = 1;
      } else {
        while (angka > 0) {
          angka ~/= 10; // Bagi dan buang desimal (pembagian bulat)
          jumlahDigit++;
        }
      }

      print('Jumlah digit: $jumlahDigit');
    } catch (e) {
      print('Input tidak valid. Harap masukkan angka bulat.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
