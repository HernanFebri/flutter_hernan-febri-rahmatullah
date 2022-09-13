import 'Balok.dart';
import 'kubus.dart';

Future<void> main() async {
  kubus bangun1 = kubus(10, 5.5, 20, 11.2);
  print(bangun1.volume());

  Balok bangun2 = Balok(10, 5.0, 25);
  print(bangun2.volume());
}
