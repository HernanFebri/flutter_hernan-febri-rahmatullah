import 'mobil.dart';

class Hewan {
  var namaHewan;
  var beratHewan;
}

void main(List<String> args) {
  var kendaraan = Mobil();
  kendaraan.kapasitas = 30;
  kendaraan.muatan;

  kendaraan.tambahMuatan("Bebek", 3);
  kendaraan.tambahMuatan("Ayam", 2);
  kendaraan.tambahMuatan("Kambing", 27);

  kendaraan.totalMuatan();
}
