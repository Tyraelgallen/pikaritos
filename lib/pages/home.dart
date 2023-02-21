import 'package:flutter/material.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: AssetImage("assets/images/portada.png"),
              ),

              //JUGAR
              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  Navigator.of(context).pushNamed('menu');
                },
                child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/jugars.png")),
              ),
            ],
          ),
        ));
  }
}
