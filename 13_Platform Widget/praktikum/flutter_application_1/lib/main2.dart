import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const PageScaffoldApp());

class PageScaffoldApp extends StatelessWidget {
  const PageScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Text('Edit'),
          trailing: Icon(Icons.edit),
          middle: Text('Telegram'),
        ),
        child: Center(),
      ),
    );
  }
}
