import 'package:flutter/material.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Image(
                    image: AssetImage("assets/images/pikaritos.png"),
                  ),

                  //JUGAR
                  ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        Navigator.of(context).pushNamed('menu_draw');
                      },
                      child: Texto("Colorea")),

                  // OPCIONES
                  ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        Navigator.of(context).pushNamed('a');
                      },
                      child: Texto("Escucha y Escribe")),

                  //CREDITOS

                  ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        // Navigator.of(context).pushNamed('home');
                      },
                      child: Texto("Aprende a Leer")),

                  //SALIR
                  ElevatedButton(
                    style: Styles.button_style,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/salir.png"),
                    ),
                  ),

                  const Image(
                    image: AssetImage("assets/images/pikaritos.png"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
