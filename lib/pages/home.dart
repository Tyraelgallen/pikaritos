import 'package:flutter/material.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                image: AssetImage("assets/images/logo1.png"),
              ),

              //JUGAR
              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  Navigator.of(context).pushNamed('menu');
                },
                child: const Image(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/jugar.png")),
              ),

              // OPCIONES
              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  // Navigator.of(context).pushNamed('e');
                },
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/opciones.png"),
                ),
              ),

              //CREDITOS

              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  // Navigator.of(context).pushNamed('i');
                },
                child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/creditos.png")),
              ),

              //SALIR
              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  //TODO Popupmenu
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
