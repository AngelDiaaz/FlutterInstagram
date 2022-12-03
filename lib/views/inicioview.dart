import 'package:flutter/material.dart';
import 'package:instagramview/utils/drawermenu.dart';

import 'instagramview.dart';

/// Clase Inicio, muestra el inicio de la app
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /**
       * Muestro el drawer de la app en la parte superior derecha
       */
        endDrawer: const DrawerMenu(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(193, 53, 132, 0.6),
          title: const Center(
            child: Text(
              'Inicio Instagram',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.bold),
            ),
          ),

          /**
           * Incluyo este widget para que aparezca el titulo centrado en la app
           */
          leading: GestureDetector(),
          actions: <Widget>[
            Builder(
              builder: (context) => Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: IconButton(
                      color: Colors.white,
                      icon: const Icon(
                        Icons.more_horiz,
                      ),
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                    ),
                  )),
            ),
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'Hola Francis, bienvenido al layout de Instragram.'
                    '\n  Pulsa el botón de abajo o navega a través del'
                    '\n      drawer en la esquina superior derecha.',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Kalam',
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(30),
                    height: 50,
                    minWidth: 196,
                    color: const Color.fromRGBO(193, 53, 132, 0.6),
                    /**
                     * Dirige al layout de instragram al pulsar el boton
                     */
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyInstragram()),
                      );
                    },
                    child: const Text(
                      'Layout Instragram',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NotoSansJP'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
