import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:barcode/barcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Barcode'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Alterra Academy',
              ),
              BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Flutter Asik',
              ),
              BarcodeWidget(
                barcode: Barcode.code128(),
                data: 'Hernan Febri Rahmatullah',
              )
            ])));
  }
}
