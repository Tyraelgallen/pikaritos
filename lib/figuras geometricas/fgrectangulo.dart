import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class Fgrectangulo extends StatelessWidget {
  const Fgrectangulo({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const Image(
                  image: AssetImage("assets/images/rectangulo.png"),
                  //-------------LOGO--------------
                ),
                // child: Image.asset(
                // widget.objetos[currentPage],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
          child: SizedBox(
            width: size.width,
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              style: const TextStyle(
                fontSize: 200,
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
                onPressed: () {
                  _Patosoundbutton();
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: "back2",
              tooltip: "Atras",
              onPressed: () {},
              child: const Icon(Icons.keyboard_double_arrow_left),
            ),
            const SizedBox(width: 75),
            FloatingActionButton(
              heroTag: "next2",
              tooltip: "Adelante",
              onPressed: () {
                Navigator.of(context).pushNamed('romb');
              },
              child: const Icon(Icons.keyboard_double_arrow_right),
            )
          ],
        ),
      ),
    );
  }
}

//--------------------------------------------------------------

//------------------------------------------------------------

//------------------------------------------------------------
Future<void> _Patosoundbutton() async {
  Soundpool pool = Soundpool(streamType: StreamType.notification);
  int soundId =
      await rootBundle.load('assets/pato.mp3').then((ByteData soundData) {
    return pool.load(soundData);
  });
  int streamId = await pool.play(soundId);
}
