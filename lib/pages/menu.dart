import 'package:flutter/material.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    //colorea y aprende

                    ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        Navigator.of(context).pushNamed('motion');
                      },
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/bttn_colorea.png"),
                        width: 300,
                      ),
                    ),

                    ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        Navigator.of(context).pushNamed('menu_draw');
                      },
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/bttn_colorea.png"),
                        width: 300,
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Aprende jugando
                    ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        Navigator.of(context).pushNamed('vocales');
                      },
                      child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/aprendejugando.png"),
                        width: 300,
                      ),
                    ),

                    //aprende a leer
                    ElevatedButton(
                      style: Styles.button_style,
                      onPressed: () {
                        Navigator.of(context).pushNamed('ptc');
                      },
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/ptc.png"),
                        width: 300,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: Styles.button_style,
                        onPressed: () {
                          Navigator.of(context).pushNamed('figurasgeom');
                        },
                        child: const Text(
                          "Figuras Geometricas",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: Styles.button_style,
                        onPressed: () {
                          Navigator.of(context).pushNamed('colors');
                        },
                        child: const Text(
                          "Globos de Colores",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
                //SALIR
                ElevatedButton(
                  style: Styles.button_style,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Image(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/close.png"),
                    width: 100,
                    // height: 100,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
