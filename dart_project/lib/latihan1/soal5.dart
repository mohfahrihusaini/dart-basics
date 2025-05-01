import 'dart:io';

void main() {
  stdout.write('Masukkan angka untuk dihitung persegi: ');
  int angka = int.parse(stdin.readLineSync()!);
  int persegi = angka * angka;
  print('Persegi dari $angka adalah $persegi');
}
