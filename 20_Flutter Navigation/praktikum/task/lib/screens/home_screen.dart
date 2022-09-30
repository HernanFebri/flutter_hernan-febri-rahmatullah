// Navigator Tanpa Route

// import 'package:flutter/material.dart';
// import 'package:tasksection18/models/kontak.dart';
// import 'entry_kontak_screen.dart';
// import 'package:tasksection18/widgets/kontak_item.dart';

// class HomeScreen extends StatefulWidget {
//   static const routeName = '/kontak';
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<Kontak> dataKontak = [
// Kontak(
//     nama: 'Hernan Febri',
//     phone: '08124124159',
//     jenisKelamin: 'Laki-laki',
//   ),
//   Kontak(
//     nama: 'Amel',
//     phone: '08124151286',
//     jenisKelamin: 'Perempuan',
//   ),
//   Kontak(
//     nama: 'Dika',
//     phone: '081502589226',
//     jenisKelamin: 'Laki-laki',
//   ),
//   Kontak(
//     nama: 'Arip',
//     phone: '081290392031',
//     jenisKelamin: 'Laki-laki',
//   ),
//   Kontak(
//     nama: 'Dela',
//     phone: '08124148042',
//     jenisKelamin: 'Perempuan',
//   ),
//   Kontak(
//     nama: 'Deva',
//     phone: '082220582551',
//     jenisKelamin: 'Perempuan',
//   ),
//   Kontak(
//     nama: 'Purnama',
//     phone: '08124523613',
//     jenisKelamin: 'Laki-laki',
//   ),
//   Kontak(
//     nama: 'Belaa',
//     phone: '0875571513',
//     jenisKelamin: 'Perempuan',
//   ),
//   Kontak(
//     nama: 'Inul',
//     phone: '082141513513',
//     jenisKelamin: 'Perempuan',
//   ),
//   Kontak(
//     nama: 'Febri',
//     phone: '08242151225',
//     jenisKelamin: 'Laki-laki',
//   ),
//
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Contacts',
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: ListView.separated(
//           itemBuilder: (context, index) {
//             final kontak = dataKontak.elementAt(index);
//             return KontakItem(kontak);
//           },
//           separatorBuilder: (context, index) => const Divider(),
//           itemCount: dataKontak.length,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context).push(
//               MaterialPageRoute(builder: (_) => const EntryKontakScreen()));
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// Navigator dengan Route

import 'package:flutter/material.dart';
import 'package:task/models/kontak.dart';
import 'entry_kontak_screen.dart';
import 'package:task/widgets/kontak_item.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Kontak> dataKontak = [
    Kontak(
      nama: 'Hernan Febri',
      phone: '08124124159',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Amel',
      phone: '08124151286',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Dika',
      phone: '081502589226',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Arip',
      phone: '081290392031',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Dela',
      phone: '08124148042',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Deva',
      phone: '082220582551',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Purnama',
      phone: '08124523613',
      jenisKelamin: 'Laki-laki',
    ),
    Kontak(
      nama: 'Belaa',
      phone: '0875571513',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Inul',
      phone: '082141513513',
      jenisKelamin: 'Perempuan',
    ),
    Kontak(
      nama: 'Febri',
      phone: '08242151225',
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
          Navigator.of(context).pushNamed('/entry');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
