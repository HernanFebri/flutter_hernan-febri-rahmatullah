import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "'/homescreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  var pesan = {
    'fname': '',
    'lname': '',
    'email': '',
    'msg': '',
  };

  @override
  Widget build(BuildContext context) {
    // tambahPesan = ModalRoute.of(context)!.settings.arguments as Function(Data);
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          "https://toppng.com/uploads/preview/logo-kabupaten-banyumas-11550712260np81vzo9l1.png",
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
                    "Welcome to Batturaden",
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
            const Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("First Name")),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Silahkan input First Name yang valid";
                }
                return null;
              },
              onSaved: (newValue) {
                if (newValue != null) pesan['fName'] = newValue;
              },
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("Last Name")),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Silahkan input Last Name yang valid";
                }
                return null;
              },
              onSaved: (newValue) {
                if (newValue != null) pesan['lName'] = newValue;
              },
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("Email")),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Silahkan input Email yang valid";
                }
                return null;
              },
              onSaved: (newValue) {
                if (newValue != null) pesan['email'] = newValue;
              },
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: 3,
              decoration: const InputDecoration(label: Text("Message")),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Silahkan input Message yang valid";
                }
                return null;
              },
              onSaved: (newValue) {
                if (newValue != null) pesan['msg'] = newValue;
              },
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState != null &&
                    formKey.currentState!.validate()) {
                  // _onSubmit();
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
