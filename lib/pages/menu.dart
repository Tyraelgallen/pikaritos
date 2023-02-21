import 'package:flutter/material.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //colorea y aprende
                  ElevatedButton(
                    style: Styles.button_style,
                    onPressed: () {
                      Navigator.of(context).pushNamed('menu_draw');
                    },
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bttn_colorea.png"),
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Aprende jugando
                  ElevatedButton(
                    style: Styles.button_style,
                    onPressed: () {
                      Navigator.of(context).pushNamed('a');
                    },
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/aprendejugando.png"),
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
                        image: AssetImage("assets/images/ptc.png")),
                  ),
                  const SizedBox(height: 70),
                  //SALIR
                  ElevatedButton(
                    style: Styles.button_style,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/close.png"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
