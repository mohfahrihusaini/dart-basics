void main() {
  // Daftar kata-kata yang ingin dihitung panjangnya
  List<String> daftarKata = ['Apel', 'Pisang', 'Mangga', 'Durian', 'Semangka'];

  // Menggunakan perulangan for-in untuk mengulangi daftarKata
  for (var kata in daftarKata) {
    print('Kata: $kata, Panjang: ${kata.length}');
  }
}
