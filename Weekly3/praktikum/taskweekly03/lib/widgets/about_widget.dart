import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 250,
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Card(
            margin: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueGrey,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.5dN2X8kt5fQsL_mIAPStPQHaE7?w=268&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7"))),
                child: Column(
                  children: const [
                    Text(
                      "Pancuran 3",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    Text(
                      "Start From Rp 20.000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blueGrey,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.18K-zI__o0QdrvjaGzFSDgHaEQ?w=324&h=186&c=7&r=0&o=5&dpr=1.5&pid=1.7"))),
                child: Column(
                  children: const [
                    Text(
                      "Pancuran 7",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    Text(
                      "Start From Rp 25.000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
