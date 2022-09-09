import 'hewan.dart';

class Mobil {
  var kapasitas;
  List muatan = [];
  var total = 0;

  void tambahMuatan(String namaHewan, int beratHewan) {
    if (kapasitas >= beratHewan) {
      kapasitas = kapasitas - beratHewan;
      total = total + beratHewan;

      muatan.add("$namaHewan dengan berat ${beratHewan} Kg");
      print("Menambah data ${muatan}");
      print("Hewan telah ditambahkan ke dalam list muatan.");
      print("Sisa kapasitas mobil saat ini ${kapasitas} Kg.");
      print(
          "==========================================================================================");
    } else {
      print(
          "Mohon maaf, $namaHewan dengan berat ${beratHewan} Kg melebihi kapasitas yang tersedia.");
      print(
          "Muatan melebihi kapasitas mobil karena sisa kapasitas hanya tersisa ${kapasitas} Kg.");
      print(
          "==========================================================================================");
    }
  }

  void totalMuatan() {
    print("Total muatan yang diangkut mobil saat ini ${total} Kg.");
  }
}
