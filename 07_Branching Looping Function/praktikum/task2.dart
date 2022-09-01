import 'dart:io';

void main() {
  double factorial = 1;

  print("Masukkan Bilangan (10/20/30) : ");
  double? n = double.parse(stdin.readLineSync()!);
  
  for (double i = 1; i <= n; i++){
    factorial *= i;
  }
  print("Hasilnya adalah " + factorial.toString());
}