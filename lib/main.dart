import 'package:flutter/material.dart';
import 'package:cernarutas/pagina_inicial.dart';
import 'package:cernarutas/pagina_dos.dart';
import 'package:cernarutas/pantalla_tres.dart';
import 'package:cernarutas/pantalla_cuatro.dart';
import 'package:cernarutas/pantalla_cinco.dart';
import 'package:cernarutas/pantalla_seis.dart';
import 'package:cernarutas/pantalla_siete.dart';

void main() => runApp(MIRuta());

class MIRuta extends StatelessWidget {
  const MIRuta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
