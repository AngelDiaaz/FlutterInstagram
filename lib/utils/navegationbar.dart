import 'package:flutter/material.dart';


class NavegationBar extends StatelessWidget {
  const NavegationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, color: Colors.black, size: 40),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_sharp, color: Colors.black, size: 40),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined, color: Colors.black, size: 40),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border, color: Colors.black, size: 40),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined,
              color: Colors.black, size: 40),
          label: '',
        ),
      ],
    );
  }
}