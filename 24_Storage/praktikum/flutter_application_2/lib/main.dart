import 'package:flutter_application_2/bloc/user_bloc.dart';
import 'package:flutter_application_2/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (context) => UserBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routes: {
          '/': (context) => const RegisterPage(),
          '/homepage': (context) => const RegisterPage(),
        },
      ),
    );
  }
}
