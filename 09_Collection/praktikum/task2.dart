import 'dart:io';

void main(List<String> args) {
  var namaLatin = {};
  var nama;

  var buah = [
    ["Rambutan", "Nephelium Lappaceum"],
    ["Markisa", "Passiflora quadrangularis L"],
    ["Jeruk", "Citrus x seinensis"],
  ];

  print("Value Dari Map");
  print("===============");
  for (nama in buah) {
    namaLatin['Nama Buah'] = nama[0];
    namaLatin['Nama Latin'] = nama[1];

    print(namaLatin['Nama Latin']);
  }
  print("===============");
  print("Key Dari Map");
  print("===============");
  for (var vale in namaLatin.keys) {
    print(vale);
  }
}
