import 'dart:io';
import 'dart:math';

void main() {
  // Generate angka acak antara 1 hingga 100
  int angkaBenar = Random().nextInt(100) + 1;
  int tebakan = -1;  // Inisialisasi dengan nilai yang tidak sama dengan angka benar
  
  print('Tebak angka antara 1 dan 100!');
  
  do {
    stdout.write('Masukkan tebakan Anda: ');
    String? input = stdin.readLineSync();
    
    if (input != null && input.isNotEmpty) {
      try {
        tebakan = int.parse(input);
        
        if (tebakan < 1 || tebakan > 100) {
          print('Harap masukkan angka antara 1 dan 100.');
        } else if (tebakan < angkaBenar) {
          print('Tebakan Anda terlalu rendah. Coba lagi!');
        } else if (tebakan > angkaBenar) {
          print('Tebakan Anda terlalu tinggi. Coba lagi!');
        } else {
          print('Selamat! Anda menebak angka yang benar: $angkaBenar');
        }
      } catch (e) {
        print('Input tidak valid. Harap masukkan angka.');
      }
    } else {
      print('Input tidak boleh kosong.');
    }
  } while (tebakan != angkaBenar);
}
