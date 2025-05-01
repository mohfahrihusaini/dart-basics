import 'dart:io';

void main() {
  stdout.write('Masukkan angka untuk menghitung faktorial: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int angka = int.parse(input);

      if (angka < 0) {
        print('Faktorial tidak didefinisikan untuk angka negatif.');
        return;
      }

      int hasil = 1;
      int counter = angka;

      while (counter > 1) {
        hasil *= counter;
        counter--;
      }

      print('Faktorial dari $angka adalah $hasil');
    } catch (e) {
      print('Input tidak valid. Harap masukkan angka bulat.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
