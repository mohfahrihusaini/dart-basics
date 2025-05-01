import 'dart:io';

void main() {
  stdout.write('Masukkan bilangan pertama: ');
  int bilangan1 = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan bilangan kedua: ');
  int bilangan2 = int.parse(stdin.readLineSync()!);

  print('Sebelum ditukar: bilangan1 = $bilangan1, bilangan2 = $bilangan2');

  // Menukar menggunakan variabel sementara
  int temp = bilangan1;
  bilangan1 = bilangan2;
  bilangan2 = temp;

  print('Setelah ditukar: bilangan1 = $bilangan1, bilangan2 = $bilangan2');
}
