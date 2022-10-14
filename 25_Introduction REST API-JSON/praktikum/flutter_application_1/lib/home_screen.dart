import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "'/homescreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                label: Text('Nama'),
              )),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Job'),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('GET')),
                  ElevatedButton(onPressed: () {}, child: Text('POST')),
                  ElevatedButton(onPressed: () {}, child: Text('PUT')),
                  ElevatedButton(onPressed: () {}, child: Text('DELETE'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
