import 'package:task/models/kontak.dart';
import 'package:flutter/material.dart';

class KontakItem extends StatelessWidget {
  final Kontak kontak;
  const KontakItem(this.kontak, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(
          kontak.jenisKelamin == 'Laki-laki' ? Icons.man : Icons.girl,
        ),
      ),
      title: Text(kontak.nama),
      subtitle: Text(kontak.phone),
    );
  }
}
