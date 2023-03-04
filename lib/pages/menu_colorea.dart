import 'package:flutter/material.dart';
import 'package:leer_escribir/images.dart';
import 'package:leer_escribir/pages/draw_page.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class MenuColorea extends StatelessWidget {
  const MenuColorea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // vocales a&u
              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  // Navigator.of(context).pushNamed('draw');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrawPage(
                                list: drawVocales,
                              )));
                },
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bttn_a_u.png"),
                ),
              ),

              // numeros 0&9
              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  // Navigator.of(context).pushNamed('a');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrawPage(
                                list: drawNumeros,
                              )));
                },
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bttn_0_9.png"),
                ),
              ),

              // abecedario a&z

              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  // Navigator.of(context).pushNamed('home');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DrawPage(
                                list: drawAlfabeto,
                              )));
                },
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bttn_a_z.png"),
                ),
              ),

              //SALIR
              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Image(
                  fit: BoxFit.scaleDown,
                  image: AssetImage("assets/images/close.png"),
                  width: 100,
                ),
              ),
            ],
          ),
        ));
  }
}
