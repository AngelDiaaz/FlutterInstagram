import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(const MyApp());

_launchURL() async {
  Uri url = Uri.http('https://www.fluttercampus.com/guide/42/how-to-open-url-in-external-browser-in-flutter-app/');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(251, 252, 252, 50),
        title: const Center(
          child: Text(
            'trendencias',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Alexandria',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Expanded(
          child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
            Column(
              children: [
                Row(children: [
                  SizedBox(
                    width: 392,
                    height: 135,
                    child: Column(
                      children: [
                        Row(children: [
                          Container(
                            width: 140,
                            height: 135,
                            alignment: Alignment.center,
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                // border width
                                child: Container(
                                  // or ClipRRect if you need to clip the content
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "./assets/images/trendencias.jpg")),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Column(children: const [
                                      Text("3.530",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                        "publicaciones",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'NotoSansJP',
                                            fontSize: 14),
                                      )
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Column(children: const [
                                      Text("53,4 mil",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                        "seguidores",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'NotoSansJP',
                                            fontSize: 14),
                                      )
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Column(children: const [
                                      Text("192",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                        "seguidos",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: 'NotoSansJP',
                                            fontSize: 14),
                                      )
                                    ]),
                                  ),
                                ],
                              ),
                              Row(children: [
                                MaterialButton(
                                  padding: const EdgeInsets.all(5),
                                  minWidth: 130.0,
                                  height: 30.0,
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: const Text(
                                    'Enviar mensaje',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                MaterialButton(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  minWidth: 0,
                                  height: 30,
                                  color: Colors.white,
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.person_add_alt_1,
                                    size: 25,
                                  ),
                                ),
                                MaterialButton(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  minWidth: 0,
                                  height: 30,
                                  color: Colors.white,
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.arrow_drop_down,
                                    size: 30,
                                  ),
                                )
                              ]),
                            ],
                          ),
                        ]),
                      ],
                    ),
                  ),
                ]),
                SizedBox(
                  height: 140,
                  child: Column(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Trendencias",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Sitio web de noticias y medios de counicación",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontFamily: 'NotoSansJP'),
                            ),
                            const Text(
                              "Moda. Belleza. Street Style. Compras. Celebrities."
                              "\nAlfombras Rojas. Feminismo.",
                              style: TextStyle(fontSize: 16),
                            ),
                            const Text(
                              "iglink.co/Trendencias",
                            style:
                                  TextStyle(fontSize: 16, color: Colors.blue),
                            ),
                            TextButton(
                                child: const Text("\nCalle Jenner 3, 3º, Madrid, Spain",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.blue),),
                                onPressed: () {
                                  _launchURL();
                                }
                            ),
                          ]),
                    ],
                  ),
                ),
                SizedBox(
                  width: 392,
                  height: 130,
                  child: ListView(scrollDirection: Axis.horizontal, children: <
                      Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000.0),
                              child: Image.asset('./assets/images/pict1.jpg',
                                  width: 70, alignment: Alignment.center),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('Shopping'),
                            )
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000.0),
                              child: Image.asset('./assets/images/pict2.jpg',
                                  width: 70, alignment: Alignment.center),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('StreetStyle'),
                            )
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000.0),
                              child: Image.asset('./assets/images/pict3.jpg',
                                  width: 70, alignment: Alignment.center),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('Zara'),
                            )
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000.0),
                              child: Image.asset('./assets/images/pict4.jpg',
                                  width: 70, alignment: Alignment.center),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('Celebreties'),
                            )
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000.0),
                              child: Image.asset('./assets/images/pict5.jpg',
                                  width: 70, alignment: Alignment.center),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('Belleza'),
                            )
                          ]),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(1000.0),
                              child: Image.asset('./assets/images/pict6.jpg',
                                  width: 70, alignment: Alignment.center),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('Feminismo'),
                            )
                          ]),
                    ),
                  ]),
                ),
                Row(children: [
                  MaterialButton(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    minWidth: 196,
                    onPressed: () {},
                    child: const Text(
                      'Enviar correo electrónico',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSansJP'),
                    ),
                  ),
                  MaterialButton(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    minWidth: 196,
                    onPressed: () {},
                    child: const Text(
                      'Cómo llegar',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSansJP'),
                    ),
                  ),
                ]),
                Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                      child: IconButton(
                        icon: const Icon(Icons.apps,
                            color: Colors.blue, size: 38),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(75, 0, 75, 10),
                      child: IconButton(
                        icon: const Icon(Icons.add_box_sharp,
                            color: Colors.grey, size: 38),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: IconButton(
                        icon: const Icon(Icons.account_box_outlined,
                            color: Colors.grey, size: 38),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  './assets/images/shopping4.jpg',
                  width: 131,
                  height: 130,
                ),
                Image.asset(
                  './assets/images/shopping5.jpg',
                  width: 130,
                  height: 130,
                ),
                Image.asset(
                  './assets/images/shopping7.jpg',
                  width: 131,
                  height: 130,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  './assets/images/shopping2.jpg',
                  width: 131,
                  height: 130,
                ),
                Image.asset(
                  './assets/images/shopping3.jpg',
                  width: 130,
                  height: 130,
                ),
                Image.asset(
                  './assets/images/shopping6.jpg',
                  width: 131,
                  height: 130,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  './assets/images/shopping1.jpg',
                  width: 131,
                  height: 130,
                ),
                Image.asset(
                  './assets/images/shopping8.jpg',
                  width: 130,
                  height: 130,
                ),
              ],
            ),
          ]),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp, color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken, color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,
                color: Colors.black, size: 40),
            label: '',
          ),
        ],
        // selectedItemColor: Colors.black87,
      ),
    );
  }
}
