import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Gallery(),
    );
  }
}

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List img = [
    "https://images.tokopedia.net/img/JFrBQq/2022/6/27/7b10d577-50f9-4840-a6da-7f4f2ea45d91.jpg",
    "https://images.tokopedia.net/img/JFrBQq/2022/6/27/28c3e553-5d26-4028-aca4-007707f30de0.jpg",
    "https://images.tokopedia.net/img/JFrBQq/2022/6/27/7e493d0b-13b1-4b05-818c-60b89ae5a48d.jpg",
    "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/09/Paquito.jpg",
    "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/09/Benedetta.jpg",
    "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/09/Yve.jpg",
    "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/09/Popol.jpg",
    "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/09/Mathilda.jpg",
    "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/09/Gusion-1-1024x529.jpg",
    "https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2019/09/franco.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Gallery",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 50,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return RawMaterialButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return InkWell(
                                  child: Image.network(
                                    img[index],
                                    fit: BoxFit.fill,
                                  ),
                                );
                              });
                        },
                        onLongPress: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    content: Image.network(
                                      img[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            img[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                    itemCount: img.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
