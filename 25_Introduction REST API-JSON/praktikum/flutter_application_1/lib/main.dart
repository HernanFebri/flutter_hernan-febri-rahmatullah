import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOME',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: MyHomePage(title: "Home"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nameController = TextEditingController();
  final jobController = TextEditingController();
  String response = "";

  @override
  void dispose() {
    nameController.dispose();
    jobController.dispose();
    super.dispose();
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: jobController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Job',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _get();
                    },
                    child: Text('GET'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _post();
                    },
                    child: Text('POST'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _put();
                    },
                    child: Text('PUT'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _delete();
                    },
                    child: Text('DELETE'),
                  ),
                ),
              ],
            ),
            Text(response),
          ],
        ),
      ),
    );
  }

  _get() async {
    try {
      Response response = await Dio().get("https://reqres.in/api/users");
      setState(() {
        this.response = response.data.toString();
      });
    } catch (e) {
      print(e);
    }
  }

  _post() async {
    Map<String, dynamic> data = {
      "name": nameController.text,
      "job": jobController.text,
    };
    try {
      Response response =
          await Dio().post("https://reqres.in/api/users", data: data);
      setState(() {
        this.response = response.data.toString();
      });
    } catch (e) {
      print(e);
    }
  }

  _put() async {
    Map<String, dynamic> data = {
      "name": nameController.text,
      "job": jobController.text,
    };
    try {
      Response response =
          await Dio().put("https://reqres.in/api/users/4", data: data);
      setState(() {
        this.response = response.data.toString();
      });
    } catch (e) {
      print(e);
    }
  }

  _delete() async {
    try {
      Response response = await Dio().delete("https://reqres.in/api/users/4");
      setState(() {
        this.response = response.data.toString();
      });
    } catch (e) {
      print(e);
    }
  }

  Map<String, dynamic> _parseAndDecode(String response) {
    return json.decode(response);
  }
}
