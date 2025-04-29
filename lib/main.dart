import 'package:act6_widgetsrutas/Pantalla4.dart';
import 'package:act6_widgetsrutas/Pantalla9.dart';
import 'package:flutter/material.dart';
import 'Pantalla1.dart';
import 'Pantalla2.dart';
import 'Pantalla3.dart';
import 'Pantalla4.dart';
import 'Pantalla5.dart';
import 'Pantalla6.dart';
import 'Pantalla7.dart';
import 'Pantalla8.dart';
import 'Pantalla9.dart';
import 'Pantalla10.dart';
import 'Pantalla11.dart';

void main() => runApp(MyRutas());

class MyRutas extends StatelessWidget {
  const MyRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
