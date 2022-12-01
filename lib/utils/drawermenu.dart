import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName:
                Text("F1-APP", style: TextStyle(color: Colors.lightBlueAccent)),
            accountEmail: Text("informes@gmail.com",
                style: TextStyle(color: Colors.lightBlueAccent)),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/trendencias.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.purple,
            child: const ListTile(
              title: Text(
                "Coches",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: const Text("Calendario"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Horario"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
