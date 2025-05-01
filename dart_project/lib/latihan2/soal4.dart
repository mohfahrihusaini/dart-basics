import 'dart:io';
import 'dart:math';

void main() {
  // Generate angka acak antara 1 sampai 10
  int angkaBenar = Random().nextInt(10) + 1;
  int? tebakan;

  print('Tebak angka antara 1 dan 10!');

  do {
    stdout.write('Masukkan tebakan Anda: ');
    String? input = stdin.readLineSync();

    if (input != null && input.isNotEmpty) {
      try {
        tebakan = int.parse(input);

        if (tebakan < 1 || tebakan > 10) {
          print('Harap masukkan angka antara 1 dan 10.');
        } else if (tebakan != angkaBenar) {
          print('Tebakan Anda salah. Coba lagi!');
        }
      } catch (e) {
        print('Input tidak valid. Masukkan angka bulat.');
      }
    } else {
      print('Input tidak boleh kosong.');
    }
  } while (tebakan != angkaBenar);

  print('Selamat! Anda menebak angka yang benar: $angkaBenar');
}
