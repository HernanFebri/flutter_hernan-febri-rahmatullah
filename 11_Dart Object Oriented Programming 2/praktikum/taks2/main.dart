import 'fpb.dart';
import 'kpk.dart';

void main() {
  FaktorPersekutuanTerbesar fpb = FaktorPersekutuanTerbesar(10, 4);
  print(fpb.hasil());

  KelipatanPersekutuanTerkecil kpk = KelipatanPersekutuanTerkecil(10, 4);
  print(kpk.hasil());
}
