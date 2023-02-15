import 'package:flutter/material.dart';
import 'package:leer_escribir/images.dart';
import 'package:leer_escribir/pages/draw_page.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class MenuColorea extends StatelessWidget {
  const MenuColorea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Padding(
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
                    // Navigator.of(context).pushNamed('draw');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DrawPage(
                                  list: drawVocales,
                                )));
                  },
                  child: Texto("Vocales")),

              // OPCIONES
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
                  child: Texto("Números")),

              //CREDITOS

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
                  child: Texto("Alfabeto")),

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
        ));
  }
}
