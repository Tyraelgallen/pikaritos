import 'package:flutter/material.dart';
import 'package:leer_escribir/pages/drag_drop_colores.dart';
import 'package:leer_escribir/sound_vocales/a.dart';
import 'package:leer_escribir/pages/draw_page.dart';
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

        //como para la pantalla DRAW ahora se pasan 3 listas distintas, ya no se usa ruteo
        // "draw": (context) => DrawPage(
        //       list: vocales,
        //     ),
      },
    );
  }
}
