import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/kontak.dart';
import 'entry_kontak_screen.dart';
import 'package:flutter_application_1/widgets/kontak_item.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/kontak';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Kontak> dataKontak = [
    Kontak(
      nama: 'Hernan Febri',
      phone: '0851252519',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Arip',
      phone: '08125557186',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Diki Sugeng',
      phone: '08249242512',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Satria',
      phone: '0852525531',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Putri P',
      phone: '08151776713',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Alifia S',
      phone: '08516651751',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Purmono',
      phone: '0851678173613',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Bella',
      phone: '08751378571513',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Dela',
      phone: '08592813513',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Aang',
      phone: '085175716351',
      jenisKelamin: 'Laki-laki',
    ),
  ];

  void tambahKontak(Kontak kontak) {
    setState(() {
      dataKontak.add(kontak);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contacts',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemBuilder: (context, index) {
            final kontak = dataKontak.elementAt(index);
            return KontakItem(kontak);
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: dataKontak.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            EntryKontakScreen.routeName,
            arguments: tambahKontak,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
