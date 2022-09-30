// Navigator Pop tanpa route

// import 'package:flutter/material.dart';

// class EntryKontakScreen extends StatefulWidget {
//   static const routeName = '/kontak/new';
//   const EntryKontakScreen({super.key});

//   @override
//   State<EntryKontakScreen> createState() => _EntryKontakScreenState();
// }

// class _EntryKontakScreenState extends State<EntryKontakScreen> {
//   var dataKontak = {'nama': '', 'phone': '', 'jk': 'Laki-laki'};
//   String? jenisKelamin;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Create New Contact'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               TextFormField(
//                 decoration: const InputDecoration(
//                   icon: Icon(Icons.person),
//                   label: Text('Nama'),
//                 ),
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   icon: Icon(Icons.phone),
//                   label: Text('Nomor Telepon'),
//                 ),
//               ),
//               Row(
//                 children: [
//                   const Text('Jenis Kelamin:'),
//                   Radio(
//                     value: 'Laki-laki',
//                     groupValue: jenisKelamin,
//                     onChanged: (value) {
//                       if (value != null) {
//                         setState(() {
//                           jenisKelamin = value;
//                         });
//                       }
//                     },
//                   ),
//                   const Text('Laki-laki'),
//                   Radio(
//                     value: 'Perempuan',
//                     groupValue: jenisKelamin,
//                     onChanged: (value) {
//                       if (value != null) {
//                         setState(() {
//                           jenisKelamin = value;
//                         });
//                       }
//                     },
//                   ),
//                   const Text('Wanita'),
//                 ],
//               ),
// ElevatedButton(
//   onPressed: () {
//     {
//       Navigator.of(context).pop();
//     }
//   },
//   child: const Text('Submit'),
// ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Navigator Push dengan Route

import 'package:flutter/material.dart';
import 'package:task/models/kontak.dart';
import 'package:task/screens/home_screen.dart';

class EntryKontakScreen extends StatefulWidget {
  static const routeName = '/entry';
  const EntryKontakScreen({super.key});

  @override
  State<EntryKontakScreen> createState() => _EntryKontakScreenState();
}

class _EntryKontakScreenState extends State<EntryKontakScreen> {
  var dataKontak = {'nama': '', 'phone': '', 'jk': 'Laki-laki'};
  String? jenisKelamin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  label: Text('Nama'),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  label: Text('Nomor Telepon'),
                ),
              ),
              Row(
                children: [
                  const Text('Jenis Kelamin:'),
                  Radio(
                    value: 'Laki-laki',
                    groupValue: jenisKelamin,
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          jenisKelamin = value;
                        });
                      }
                    },
                  ),
                  const Text('Laki-laki'),
                  Radio(
                    value: 'Perempuan',
                    groupValue: jenisKelamin,
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          jenisKelamin = value;
                        });
                      }
                    },
                  ),
                  const Text('Wanita'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
