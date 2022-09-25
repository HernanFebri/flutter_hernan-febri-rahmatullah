import 'package:flutter/material.dart';

class Image3 extends StatefulWidget {
  const Image3({super.key});

  @override
  State<Image3> createState() => _Image3State();
}

class _Image3State extends State<Image3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image3"),
        ),
        body: Container(
          child: Image.network(
            'https://gamebrott.com/wp-content/uploads/2019/01/181.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
        ));
  }
}
