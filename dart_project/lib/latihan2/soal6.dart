import 'dart:io';

void main() {
  stdout.write('Masukkan tahun: ');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int tahun = int.parse(input);

      if ((tahun % 4 == 0 && tahun % 100 != 0) || (tahun % 400 == 0)) {
        print('$tahun adalah tahun kabisat.');
      } else {
        print('$tahun bukan tahun kabisat.');
      }
    } catch (e) {
      print('Input tidak valid. Harap masukkan angka.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
