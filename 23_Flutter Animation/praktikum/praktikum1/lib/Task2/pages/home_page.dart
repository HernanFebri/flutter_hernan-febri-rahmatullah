import 'package:praktikum1/Task2/models/contacs.dart';
import 'package:praktikum1/Task2/pages/add_contact_page.dart';
import 'package:praktikum1/Task2/pages/contact_page.dart';
import 'package:praktikum1/Task2/pages/empty_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Home'),
      ),
      body: buildHomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return const AddContactPage();
            },
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: 0.0, end: 20.0);
              return RotationTransition(
                turns: animation.drive(tween),
                child: child,

                // floatingActionButton: FloatingActionButton(
                //   onPressed: () {
                //     // final contactProvider = Provider.of<Contact>(context, listen: false);
                //     Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) {
                //         return const AddContactPage(
                //             // onCreate: (task) {
                //             //   contactProvider.addContact(task);
                //             //   Navigator.pop(context);
                //             // },
              );
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildHomePage() {
    return Consumer<Contact>(
      builder: (context, contact, child) {
        if (contact.contacts.isNotEmpty) {
          return ContactPage(contact: contact);
        } else {
          return const EmptyPage();
        }
      },
    );
  }
}
