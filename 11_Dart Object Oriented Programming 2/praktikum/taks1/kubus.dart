import 'bangunruang.dart';

class kubus extends bangunruang {
  //melakukan inheritance
  double sisi;
  kubus(super.panjang, super.lebar, super.tinggi, this.sisi);

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}
