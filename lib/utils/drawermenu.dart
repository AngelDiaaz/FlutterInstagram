import 'package:flutter/material.dart';
import '../views/creditsview.dart';
import '../views/inicioview.dart';
import '../views/instagramview.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/instragram.jpg"),
                    fit: BoxFit.cover)), child: null,
          ),
          ListTile(
              title: const Text(
                "Inicio",
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Inicio()),);
              },
            ),
          ListTile(
            title: const Text("Instagram"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyInstragram()),);
            },
          ),
          ListTile(
            title: const Text("Créditos"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Fin()),);
            },
          ),
        ],
      ),
    );
  }
}
