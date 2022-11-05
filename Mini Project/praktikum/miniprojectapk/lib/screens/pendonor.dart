import '../reusable_widgets/square.dart';
import 'package:flutter/material.dart';

class Pendonor extends StatelessWidget {
  final List _posts = [
    'Nafis\nnafismaul@gmail.com\n085712644127\nGolongan Darah B+',
    'Reza Mustofa\nreza@gmail.com\n08151238712\nGolongan Darah AB-',
    'Nanda Zul\nnanda@gmail.com\n0812991725\nGolongan Darah A',
    'Amela\namel@gmail.com\n08522984922\nGolongan Darah AB-',
    'Naufal\nnaufal@gmail.com\n0812471924\nGolongan Darah B',
    'Reynaldi\nrey1234@gmail.com\n08129383840\nGolongan Darah O',
    'Aldy\nadly@gmail.com\n08999272241\nGolongan Darah B+',
  ];

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Pendonor',
          ),
          backgroundColor: Color.fromARGB(255, 240, 0, 33),
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
