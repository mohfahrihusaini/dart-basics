void main() {
  List<String> daftarBuah = ['Apel', 'Jeruk', 'Mangga', 'Pisang', 'Semangka'];

  print('Daftar buah dalam urutan terbalik:');

  for (var buah in daftarBuah.reversed) {
    print(buah);
  }
}
