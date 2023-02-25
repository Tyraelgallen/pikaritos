import 'package:flutter/material.dart';
import 'package:leer_escribir/figuras%20geometricas/fgcircle.dart';
import 'package:leer_escribir/figuras%20geometricas/fgcuadrado.dart';
import 'package:leer_escribir/figuras%20geometricas/fgestrella.dart';
import 'package:leer_escribir/figuras%20geometricas/fgexagono.dart';
import 'package:leer_escribir/figuras%20geometricas/fgoctagono.dart';
import 'package:leer_escribir/figuras%20geometricas/fgpentagono.dart';
import 'package:leer_escribir/figuras%20geometricas/fgrectangulo.dart';
import 'package:leer_escribir/figuras%20geometricas/fgrombo.dart';
import 'package:leer_escribir/figuras%20geometricas/fgtrapecio.dart';
import 'package:leer_escribir/figuras%20geometricas/fgtriangulo.dart';
import 'package:leer_escribir/pages/drag_drop_colores.dart';
import 'package:leer_escribir/sound_vocales/a.dart';
import 'package:leer_escribir/pages/draw_page.dart';
import 'package:leer_escribir/sound_vocales/abcd.dart';
import 'package:leer_escribir/sound_vocales/e.dart';
import 'package:leer_escribir/pages/home.dart';
import 'package:leer_escribir/sound_vocales/i.dart';
import 'package:leer_escribir/images.dart';
import 'package:leer_escribir/pages/menu.dart';
import 'package:leer_escribir/sound_vocales/o.dart';
import 'package:leer_escribir/sound_vocales/u.dart';
import 'package:leer_escribir/pages/menu_colorea.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        'menu': (context) => const Menu(),
        'menu_draw': (context) => const MenuColorea(),
        'a': (context) => const LetraA(),
        'e': (context) => const LetraE(),
        'i': (context) => const LetraI(),
        'o': (context) => const LetraO(),
        'u': (context) => const LetraU(),
        'ptc': (context) => const FruitSelectApp(),
        'abc': (context) => const AbcScreen(),
        // seccion figuras geometricas
        'circle': (context) => const Fgcircle(),
        'triangl': (context) => const Fgtriangle(),
        'square': (context) => const Fgcuadrado(),
        'rectngl': (context) => const Fgrectangulo(),
        'romb': (context) => const Fgrombo(),
        'trap': (context) => const Fgtrapecio(),
        'exag': (context) => const Fgexagono(),
        'star': (context) => const Fgestrella(),
        'penta': (context) => const Fgpentagono(),
        'octa': (context) => const Fgoctagono(),

        //como para la pantalla DRAW ahora se pasan 3 listas distintas, ya no se usa ruteo
        // "draw": (context) => DrawPage(
        //       list: vocales,
        //     ),
      },
    );
  }
}
