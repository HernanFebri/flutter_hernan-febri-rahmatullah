import 'bangunruang.dart';

class Balok extends bangunruang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}
