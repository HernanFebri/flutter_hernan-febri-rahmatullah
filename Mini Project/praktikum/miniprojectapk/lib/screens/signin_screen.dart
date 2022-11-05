import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:miniprojectapk/provider/auth_view_model.dart';
import 'package:miniprojectapk/reusable_widgets/reusable_widget.dart';
import 'package:miniprojectapk/screens/home_screen.dart';
import 'package:miniprojectapk/screens/signup_screen.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 240, 0, 0)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/icon_login.png"),
                const Text(
                  "Hello , Welcome to SIDORA",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: formKey,
                  child: reusableTextField("Enter Your Email", Icons.person,
                      false, _emailTextController),
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Your Password", Icons.lock_outline,
                    true, _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, false, () {
                  Provider.of<AuthViewModel>(context, listen: false).SignIn(
                      _emailTextController.text, _passwordTextController.text);
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't Have Account ?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

// Route _createRoute() {
//   return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) => SignUpScreen(),
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         const begin = Offset(0.0, 5.0);
//         const end = Offset.zero;
//         final tween = Tween(begin: begin, end: end);
//         final offsetAnimation = animation.drive(tween);

//         return SlideTransition(
//           position: offsetAnimation,
//           child: child,
//         );
//       });
// }
