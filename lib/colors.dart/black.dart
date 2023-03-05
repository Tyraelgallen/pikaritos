import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class ColorsBlack extends StatelessWidget {
  const ColorsBlack({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Glisser Déposer Quiz',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String ans = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Drag and Drop Quiz App"),
      //   elevation: 0.0,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/c_black.png",
                      width: 400,
                      // onPressed: () {
                      //_Patosoundbutton();
                      //  },
                    ),
                    const Text(
                      '    BLACK',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.shade100,
                        border: Border.all(
                          width: 1,
                          color: Colors.black38,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: DragTarget<String>(
                        onAccept: (char) {
                          setState(() {
                            ans = char;
                          });
                        },
                        builder: (context, candidateData, rejectedData) {
                          return Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              ans,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      children: ["negro", "grone", "engro"]
                          .map<Widget>(buildAnswer)
                          .toList(),
                    )
                  ],
                ),
                if (ans.isNotEmpty)
                  Positioned(
                    top: 10,
                    right: 0,
                    left: 0,
                    child: ans == "negro"
                        ? const Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 300,
                          )
                        : const Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 300,
                          ),
                  ),
              ],
            ),
            if (ans.isNotEmpty)
              TextButton(
                onPressed: () {
                  setState(() {
                    ans = "";
                  });
                },
                style: TextButton.styleFrom(foregroundColor: Colors.grey),
                child: const Text("Replay"),
              ),
          ],
        ),
      ),
      // . botones Colours
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: "back2",
              tooltip: "Atras",
              onPressed: () {
                Navigator.of(context).pushNamed('home');
              },
              child: const Icon(Icons.keyboard_double_arrow_left),
            ),
            const SizedBox(width: 75),
            FloatingActionButton(
              heroTag: "next2",
              tooltip: "Adelante",
              onPressed: () {
                Navigator.of(context).pushNamed('blue');
              },
              child: const Icon(Icons.keyboard_double_arrow_right),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget buildAnswer(String answer) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.deepOrange.shade100,
          border: Border.all(
            width: 1,
            color: Colors.black38,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(20),
        child: Draggable(
          data: answer,
          feedback: Material(
            color: Colors.transparent,
            child: Text(
              answer,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          child: Text(
            answer,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

//------------------------------------------------------------
Future<void> _Patosoundbutton() async {
  Soundpool pool = Soundpool(streamType: StreamType.notification);
  int soundId =
      await rootBundle.load('assets/pato.mp3').then((ByteData soundData) {
    return pool.load(soundData);
  });
  int streamId = await pool.play(soundId);
}
