import 'package:flutter/material.dart';
import '../views/inicioview.dart';
import '../views/instagramview.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: null,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/instragram.jpg"),
                    fit: BoxFit.cover)), accountEmail: null,
          ),
          Ink(
            color: const Color.fromRGBO(193, 53, 132, 100),
            child: ListTile(
              title: const Text(
                "Inicio",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),);
              },
            ),
          ),
          ListTile(
            title: const Text("Instagram"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyStatefulWidget()),);
            },
          ),
          ListTile(
            title: const Text("Créditos"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
