import 'package:flutter/material.dart';
import 'package:taskweekly03/widgets/about_widget.dart';
import 'package:taskweekly03/widgets/drawer_widget.dart';
import 'package:taskweekly03/widgets/form_widget.dart';
import 'package:taskweekly03/widgets/header_widget.dart';

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
        title: Image.network(
          'https://1.bp.blogspot.com/-334T0rwvq-s/XU5a7R3Fi2I/AAAAAAAAAZU/6Dj7U8SGdagO7EW_hj3e-luObPa83b43wCLcBGAs/s1600/12.BANYUMAS.png',
          fit: BoxFit.cover,
          width: 35,
          height: 35,
        ),
      ),
      endDrawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeaderWidget(),
            SizedBox(
              height: 10,
            ),
            FormWidget(),
            AboutWidget(),
          ],
        ),
      ),
    );
  }
}
