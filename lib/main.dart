import 'package:flutter/material.dart';
import 'utils/instagramview.dart';
import 'utils/drawermenu.dart';
import 'utils/navegationbar.dart';
import 'utils/inicioview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List<Widget> bodyWidgets = [const MyStatefulWidget(), SecondRoute()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram',
        home: Scaffold(
          endDrawer: Drawer(
            child: ListView(
              children: <Widget>[
                const UserAccountsDrawerHeader(
                  accountName: null,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("./assets/images/trendencias.jpg"),
                          fit: BoxFit.cover)), accountEmail: null,
                ),
                Ink(
                  color: Colors.purple,
                  child: const ListTile(
                    title: Text(
                      "Inicio",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                ListTile(
                  title: const Text("Instagram"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),);
                  },
                ),
                ListTile(
                  title: const Text("Créditos"),
                  onTap: () {},
                ),
              ],
            ),
          ),
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
            leading: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black, // add custom icons also
              ),
            ),
            actions: <Widget>[
              Builder(
                builder: (context) => Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: IconButton(
                        color: Colors.black,
                        icon: const Icon(
                          Icons.more_horiz,
                        ),
                        onPressed: () => Scaffold.of(context).openEndDrawer(),
                      ),
                    )),
              ),
            ],
          ),
          body: bodyWidgets[index],
          bottomNavigationBar: NavegationBar(),
        ));
  }
}
