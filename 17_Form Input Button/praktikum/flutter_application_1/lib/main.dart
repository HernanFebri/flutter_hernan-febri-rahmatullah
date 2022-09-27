import 'package:flutter/material.dart';

import 'screens/entry_kontak_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Contact',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          EntryKontakScreen.routeName: (context) => const EntryKontakScreen()
        });
  }
}
