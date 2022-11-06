import 'package:flutter/material.dart';
import 'package:miniprojectapk/widgets/square_widget.dart';

class Requestblood extends StatelessWidget {
  final List _posts = [
    'Samidin\nsamidin223@gmail.com\n0815817522\nMembutuhkan Darah AB-\nKota Cilacap',
    'Joko Parjo\njoko@gmail.com\n0851157241\nMembutuhkan Darah O\nKota Wonosobo',
    'Febri\nfebri@gmail.com\n08124628744\nMembutuhkan Darah B+\nKota Purwokerto',
    'Zayyin\nzeynmal@gmail.com\n08198208242\nMembutuhkan Darah AB-\nKota Semarang',
    'Fitri\nfitri@gmail.com\n08209303983\nMembutuhkan Darah A\nKota Purbalingga',
    'Ladiw\nladiw@gmail.com\n08989274924\nMembutuhkan Darah O\nKota Yogyakarta',
    'Rahmat\nrahmat@gmail.com\n08579275925\nMembutuhkan Darah A\nKota Klaten',
  ];

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Penerima Donor',
          ),
          backgroundColor: const Color(0xffcd0000),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return MySquare(
                      child: _posts[index],
                    );
                  }),
            ),
          ],
        ),
      );
    }
  }
}
