import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:soundpool/soundpool.dart';

class FigurasGeometricas extends StatefulWidget {
  const FigurasGeometricas({Key? key}) : super(key: key);

  @override
  State<FigurasGeometricas> createState() => _FigurasGeometricasState();
}

class _FigurasGeometricasState extends State<FigurasGeometricas> {
  List<String> list = [
    "assets/geometric/circle.png",
    "assets/geometric/cuadrado.png",
    "assets/geometric/triangulo.png",
    "assets/geometric/rectangulo.png",
    "assets/geometric/estrella.png",
    "assets/geometric/exagono.png",
    "assets/geometric/ovalo.png",
    "assets/geometric/pentagono.png",
    "assets/geometric/rombo.png",
    "assets/geometric/trapecio.png",
  ];
  int currentPage = 0;

  void next() {
    if (currentPage + 1 < list.length) {
      currentPage++;
      setState(() {});
    }
  }

  void back() {
    if (currentPage != 0) {
      currentPage--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Figuras Geometricas"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    list[currentPage],
                    // width: size.width,
                    // height: size.height,
                    // fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            child: SizedBox(
              width: 300,
              height: 100,
              child: TextFormField(
                cursorHeight: 50,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 12, 234, 93),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    await _Patosoundbutton();
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 50,
                  )),
              const SizedBox(
                width: 15,
              )
            ],
          ),
        ]),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: "back",
              tooltip: "Atras",
              onPressed: () {
                back();
                setState(() {});
              },
              child: const Icon(Icons.keyboard_double_arrow_left),
            ),
            const SizedBox(width: 15),
            FloatingActionButton(
              heroTag: "next",
              tooltip: "Adelante",
              onPressed: () {
                next();
                setState(() {});
              },
              child: const Icon(Icons.keyboard_double_arrow_right),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _Patosoundbutton() async {
  Soundpool pool = Soundpool(streamType: StreamType.notification);
  int soundId =
      await rootBundle.load('assets/pato.mp3').then((ByteData soundData) {
    return pool.load(soundData);
  });
  int streamId = await pool.play(soundId);
}
