import 'package:flutter/material.dart';

class Requirement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persyaratan'),
        backgroundColor: const Color.fromARGB(255, 240, 0, 33),
        elevation: 4.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: const Text(
          'Persyaratan menjadi Pendonor atau Penerima Donor : \n\n\n'
          '1. Kondisi fisik harus dalam keadaan sehat, jasmani maupun rohani.\n\n'
          '2. Berusia 17-60 tahun. Namun, untuk remaja usia 17 tahun diperbolehkan menjadi donor darah, bila mendapat izin tertulis dari orangtua dan memenuhi persyaratan lain.\n\n'
          '3.Memiliki berat badan minimal 45 kilogram\n\n'
          '4. Suhu tubuh 36,6-37,5 derajat Celcius.\n\n'
          '5. Tekanan darah harus berada di angka 100-160 untuk sistolik dan 70-100 untuk diastolik.\n\n'
          '6. Saat pemeriksaan, denyut nadi harus sekitar 50-100 kali per menit.\n\n'
          '7. Kadar hemoglobin minimal 12 gr/dl untuk wanita, dan minimal 12,5 gr/dl untuk pria.\n',
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
