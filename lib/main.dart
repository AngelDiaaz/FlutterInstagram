import 'package:flutter/material.dart';
import 'views/inicioview.dart';

/// Metodo que ejecuta la app
void main() {
  runApp(const MyApp());
}

/// Clase MyApp, donde se carga la app
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _PrincipalView();
}

class _PrincipalView extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      /**
       * Muestro la pestaña de inicio
       */
      home: Inicio(),
    );
  }
}
