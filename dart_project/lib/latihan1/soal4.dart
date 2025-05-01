import 'dart:io';

void main() {
  stdout.write('Masukkan nilai pokok (p): ');
  double p = double.parse(stdin.readLineSync()!);
  
  stdout.write('Masukkan waktu (t) dalam tahun: ');
  double t = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan tingkat bunga (r) dalam persen: ');
  double r = double.parse(stdin.readLineSync()!);

  double bunga = (p * t * r) / 100;
  print('Bunga sederhana: $bunga');
}
