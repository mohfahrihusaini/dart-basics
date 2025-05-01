import 'dart:io';

void main() {
  stdout.write('Masukkan nama hari (contoh: Senin): ');
  String? inputHari = stdin.readLineSync();

  if (inputHari != null && inputHari.isNotEmpty) {
    // Normalisasi input menjadi huruf kecil
    String hari = inputHari.toLowerCase();

    switch (hari) {
      case 'senin':
      case 'selasa':
      case 'rabu':
      case 'kamis':
      case 'jumat':
        print('$inputHari adalah hari kerja.');
        break;
      case 'sabtu':
      case 'minggu':
        print('$inputHari adalah akhir pekan.');
        break;
      default:
        print('Input tidak dikenali sebagai nama hari.');
    }
  } else {
    print('Input tidak boleh kosong.');
  }
}
