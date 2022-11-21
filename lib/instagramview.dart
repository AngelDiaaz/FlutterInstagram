import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    Text(
      'Index 2: Reels',
      style: optionStyle,
    ),
    Text(
      'Index 3: Likes',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(251, 252, 252, 50),
        title: const Center(
          child: Text(
            'trendencias',
            style: TextStyle(color: Colors.black, fontFamily: 'Alexandria'),
          ),
        ),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
          height: 1000,
          width: 392,
          child: Column(
            children: [
              Row(children: [
                Container(
                  width: 392,
                  height: 135,
                  child: Column(
                    children: [
                      Row(children: [
                        Container(
                            width: 140,
                            height: 135,
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(1000.0),
                              child: Image.asset(
                                  './assets/images/trendencias.jpg',
                                  width: 110,
                                  alignment: Alignment.center),
                            )),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(children: const [
                                    Text("3.530",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                      "publicaciones",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(children: const [
                                    Text("53,4 mil",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                      "seguidores",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(children: const [
                                    Text("192",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                      "seguidos",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                            Row(children: [
                              MaterialButton(
                                padding: const EdgeInsets.all(5),
                                minWidth: 130.0,
                                highlightColor: Colors.amber,
                                height: 30.0,
                                onPressed: () {},
                                color: Colors.white,
                                child: const Text('Enviar mensaje', style: TextStyle(fontSize: 15),),
                              ),
                              MaterialButton(
                                padding: const EdgeInsets.fromLTRB(5,0,5,0),

                                minWidth: 0,

                                height: 30,
                                color: Colors.white,
                                onPressed: () {},
                                child: const Icon(Icons.person_add_alt_1, size: 25,),
                              ),
                              MaterialButton(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                minWidth: 0,
                                height: 30,
                                color: Colors.white,
                                onPressed: () {},
                                child: const Icon(Icons.arrow_drop_down, size: 30,),
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
                width: 392,
                height: 150,
                child: Column(
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Trendencias",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Sitio web de noticias y medios de counicación",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          Text(
                            "Moda. Belleza. Street Style. Compras. Celebrities."
                            "\nAlfombras Rojas. Feminismo."
                            "\niglink.co/Trendencias"
                            "\nCalle Jenner 3, 3º, Madrid, Spain",
                            style: TextStyle(fontSize: 17),
                          ),
                        ]),
                  ],
                ),
              ),
              Container(
                width: 392,
                height: 130,
                color: Colors.amber,
              ),
              Container(
                width: 392,
                height: 60,
                color: Colors.black87,
              ),
              Container(
                width: 392,
                height: 60,
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit, color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken, color: Colors.black, size: 40),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_off, color: Colors.black, size: 40),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        // onTap: _onItemTapped,
      ),
    );
  }
}
