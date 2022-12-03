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
      /**
       * Ajusto el color y el tamaño del drawer
       */
      backgroundColor: const Color.fromRGBO(219, 219, 219, 1),
      width: 250,
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/instagram.jpg"),
                    fit: BoxFit.cover)), child: null,
          ),
          ListTile(
              title: const Text(
                "Inicio", style: TextStyle(fontSize: 16),
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
            title: const Text("Instagram", style: TextStyle(fontSize: 16)),
            /**
             * Al pulsar se abre la pestaña del layout de instagram
             */
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyInstagram.MyInstagram()),);
            },
          ),
          ListTile(
            title: const Text("Créditos", style: TextStyle(fontSize: 16)),
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
