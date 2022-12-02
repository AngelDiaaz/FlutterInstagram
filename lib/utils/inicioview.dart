import 'package:flutter/material.dart';
import 'package:instagramview/utils/drawermenu.dart';


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerMenu(),
      appBar: AppBar(backgroundColor: const Color.fromRGBO(251, 252, 252, 50),
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
            builder: (context) =>
                Padding(
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
      body: const Text('hola'),
    );
  }
}