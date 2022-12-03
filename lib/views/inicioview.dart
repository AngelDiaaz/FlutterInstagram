import 'package:flutter/material.dart';
import 'package:instagramview/utils/drawermenu.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const DrawerMenu(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(251, 252, 252, 50),
          title: const Center(
            child: Text(
              'Inicio Instagram',
              style: TextStyle(
                  color: Colors.black,
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
        body: Column(children: const [
          Center(child: Text('hola')),
        ]));
  }
}
