import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagramview/utils/drawermenu.dart';

/// Clase Fin, donde muestra los creditos y como salir de la app
class Fin extends StatelessWidget {
  const Fin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const DrawerMenu(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(193, 53, 132, 70),
          title: const Center(
            child: Text(
              'Créditos Instagram',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.bold),
            ),
          ),

          /**
           * Incluyo este widget para que me aparezca el titulo centrado en la app
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
                    'Trabajo realizado por Ángel Díaz Avilés.',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Kalam',
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Pulsa el botón de abajo para salir.',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Kalam',
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  /**
                   * Boton de salida de la app
                   */
                  child: MaterialButton(
                    padding: const EdgeInsets.all(30),
                    height: 50,
                    minWidth: 196,
                    color: const Color.fromRGBO(193, 53, 132, 70),
                    /**
                     * Al pulsar se cierra la app
                     */
                    onPressed: () => exit(0),
                    child: const Text(
                      'Fin Instragram',
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
