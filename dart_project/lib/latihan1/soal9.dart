import 'dart:io';

void main() {
  stdout.write('Masukkan string: ');
  String? input = stdin.readLineSync();
  
  if (input != null) {
    String tanpaSpasi = input.replaceAll(' ', '');
    print('String tanpa spasi: $tanpaSpasi');
  }
}
