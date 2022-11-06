import 'package:firebase_auth/firebase_auth.dart';
import 'package:miniprojectapk/widgets/card_widget.dart';
import 'package:flutter/material.dart';

const nama = "Hernan Febri";
const donor = "AB+";
const phone = "+62 81297266538";
const location = "Purwokerto";

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Profile'),
          backgroundColor: Color.fromARGB(255, 240, 0, 33),
          elevation: 4.0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              const SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              InfoCard(
                  text: nama, icon: Icons.account_box, onPressed: () async {}),
              InfoCard(
                  text: donor,
                  icon: Icons.water_drop_outlined,
                  onPressed: () async {}),
              InfoCard(
                  text: FirebaseAuth.instance.currentUser!.email!,
                  icon: Icons.email,
                  onPressed: () async {}),
              InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
              InfoCard(
                  text: location,
                  icon: Icons.location_city,
                  onPressed: () async {}),
            ],
          ),
        ));
  }
}
