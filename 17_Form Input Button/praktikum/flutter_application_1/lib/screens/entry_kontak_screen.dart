import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/kontak.dart';

class EntryKontakScreen extends StatefulWidget {
  static const routeName = '/kontak/new';
  const EntryKontakScreen({super.key});

  @override
  State<EntryKontakScreen> createState() => _EntryKontakScreenState();
}

class _EntryKontakScreenState extends State<EntryKontakScreen> {
  var dataKontak = {'nama': '', 'phone': '', 'jk': 'Laki-laki'};
  String? jenisKelamin;

  late Function(Kontak) tambahKontak;

  @override
  Widget build(BuildContext context) {
    tambahKontak =
        ModalRoute.of(context)!.settings.arguments as Function(Kontak);
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
                  {
                    Navigator.of(context).pop();
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Object newMethod(Object value) => value;
}
