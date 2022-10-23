import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskweekly03/provider/provider.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 41, 41),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 48, 45, 45),
        title: const Text('Data User'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final user = userProvider.contacts[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 39, 19, 186),
              child: Center(
                child: Text(
                  userProvider.contacts[index].name[0],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: Text(
              user.name,
              style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.email,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                Text(
                  user.message,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          );
        },
        itemCount: userProvider.contacts.length,
      ),
    );
  }
}
