import 'package:flutter/material.dart';
import '../views/creditsview.dart';
import '../views/inicioview.dart';
import '../views/instagramview.dart';

/// Clase DrawerMenu, se encuentra el drawer de la aplicacion
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
            /**
             * Al pulsar se abre la pestaña de inicio
             */
            onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Inicio()),);
              },
            ),
          ListTile(
            title: const Text("Instagram"),
            /**
             * Al pulsar se abre la pestaña del layout de instragram
             */
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyInstragram()),);
            },
          ),
          ListTile(
            title: const Text("Créditos"),
            /**
             * Al pulsar se abre la pestaña de los creditos
             */
            /// Al pulsar se abre la pestaña de los creditos
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
