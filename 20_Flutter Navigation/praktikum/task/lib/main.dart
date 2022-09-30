import 'package:flutter/material.dart';
import 'screens/entry_kontak_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        '/home' : (_) => const HomeScreen(),
        '/entry' : (_) => const EntryKontakScreen(),
      },
    );
  }
}