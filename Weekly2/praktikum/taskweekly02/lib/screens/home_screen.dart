import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "'/homescreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _uName = TextEditingController();
  final _email = TextEditingController();
  final _msg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          "https://1.bp.blogspot.com/-334T0rwvq-s/XU5a7R3Fi2I/AAAAAAAAAZU/6Dj7U8SGdagO7EW_hj3e-luObPa83b43wCLcBGAs/s1600/12.BANYUMAS.png",
          fit: BoxFit.fill,
          width: 10,
          height: 10,
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(color: Colors.black12),
              child: Image.network(
                  "https://www.mgriyahotel.com/wp-content/uploads/2018/07/DSC0738_small.jpg"),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://asset.kompas.com/crops/goNe8LjgsUdKo6OyTlRViyc2Ft0=/0x0:0x0/750x500/data/photo/2021/08/27/612878ce84e64.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Welcome to Baturraden",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      backgroundColor: Color.fromARGB(136, 0, 5, 6),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Beautiful natural beauty is found in Baturraden",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      backgroundColor: Color.fromARGB(136, 0, 5, 6),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _uName,
                decoration: const InputDecoration(
                  label: Text("Username"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _msg,
                decoration: const InputDecoration(
                    label: Text("Message"), border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: SizedBox(
                      height: 150,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Username :  ${_uName.text}'),
                          Text('Email :  ${_email.text}'),
                          Text('Message :  ${_msg.text}'),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Destinations Located in Baturraden",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 500,
              height: 250,
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Card(
                    margin:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
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
                              height: 110,
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
                    margin:
                        const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
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
                              height: 110,
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
            ),
          ],
        ),
      ),
    );
  }
}
