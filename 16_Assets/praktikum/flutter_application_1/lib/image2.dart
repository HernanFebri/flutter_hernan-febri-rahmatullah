import 'package:flutter/material.dart';

class Image2 extends StatefulWidget {
  const Image2({super.key});

  @override
  State<Image2> createState() => _Image2State();
}

class _Image2State extends State<Image2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image2"),
        ),
        body: Container(
          child: Image.network(
            'https://widiyanata.com/wallpaper/wp-content/uploads/sites/3/2021/05/0b3a11c4beb85b4d721d2874d02e7c43.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
        ));
  }
}
