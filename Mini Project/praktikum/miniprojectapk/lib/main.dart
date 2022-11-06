import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectapk/models/auth_view_model.dart';
import 'package:miniprojectapk/screens/home_screen.dart';
import 'package:miniprojectapk/screens/signin_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => AuthViewModel(),
      )
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: Provider.of<AuthViewModel>(context).statuslogin,
        builder: (context, snapshot) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.red,
              appBarTheme:
                  const AppBarTheme(backgroundColor: Colors.transparent),
            ),
            home: snapshot.data != null ? HomeScreen() : const SignInScreen(),
          );
        });
  }
}
