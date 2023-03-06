import 'package:flutter/material.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(
                      "assets/images/portada.png",
                    ),
                    width: 300,
                  ),

                  //JUGAR
                  ElevatedButton(
                    style: Styles.button_style,
                    onPressed: () {
                      Navigator.of(context).pushNamed('menu');
                    },
                    child: const Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/jugars.png"),
                      width: 300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
