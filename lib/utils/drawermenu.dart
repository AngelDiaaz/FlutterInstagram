import 'package:flutter/material.dart';
import 'inicioview.dart';

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
    );
  }
}
