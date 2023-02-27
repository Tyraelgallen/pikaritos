import 'package:flutter/material.dart';

class D_D_YO extends StatelessWidget {
  const D_D_YO({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drag and Drop Quiz App',
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
                    Row(
                      children: [
                        Image.asset(
                          "assets/yo.jpg",
                          width: 500,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'YO',
                              style:
                                  TextStyle(fontSize: 90, color: Colors.grey),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 150,
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
                                builder:
                                    (context, candidateData, rejectedData) {
                                  return Container(
                                    width: 150,
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
                                        fontSize: 35,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children:
                          ["OY", "OYO", "YO"].map<Widget>(buildAnswer).toList(),
                    )
                  ],
                ),
                if (ans.isNotEmpty)
                  Positioned(
                    top: 10,
                    right: 0,
                    left: 0,
                    child: ans == "YO"
                        ? const Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 400,
                          )
                        : const Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 400,
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
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
