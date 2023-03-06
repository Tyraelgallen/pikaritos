import 'package:flutter/material.dart';
import 'package:leer_escribir/colors/colors.dart';
import 'package:leer_escribir/figuras_geometricas/figurasgeomet.dart';
import 'package:leer_escribir/pages/drag_drop_colores.dart';
import 'package:leer_escribir/sound_vocales/abcd.dart';
import 'package:leer_escribir/pages/home.dart';
import 'package:leer_escribir/pages/menu.dart';
import 'package:leer_escribir/pages/menu_colorea.dart';
import 'package:leer_escribir/sound_vocales/vocales.dart';

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
        'vocales': (context) => const VocalesPage(),
        'ptc': (context) => const FruitSelectApp(),
        'abc': (context) => const AbcScreen(),
        'figurasgeom': (context) => const FigurasGeometricas(),
        'colors': (context) => const ColorsPage(),
      },
    );
  }
}
// git add .
//  git commit -m "cambios de pantalla"
// git push -u origin main

// para actualizar colaboraicones ----  > git pull