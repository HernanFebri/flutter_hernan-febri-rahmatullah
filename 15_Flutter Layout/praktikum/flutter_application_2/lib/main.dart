import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("GridView"),
            ),
            body: Padding(
              padding: EdgeInsets.all(8),
              child: GridView.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 8,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.pets),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.pregnant_woman),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.spatial_audio_off),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.rounded_corner),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.rowing),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.timeline),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.update),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.access_time_filled),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.back_hand),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.euro),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.g_translate),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.remove_shopping_cart),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.restore_page),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.speaker_notes_off),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.delete_forever),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.accessibility),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.check_circle_outline),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.delete_outline),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.done_outline),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.maximize),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.minimize),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.offline_bolt_rounded),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.swap_horizontal_circle),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(Icons.accessible_forward),
                      ),
                    ),
                  ]),
            )));
  }
}
