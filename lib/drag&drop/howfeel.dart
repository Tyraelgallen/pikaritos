import 'package:flutter/material.dart';
import 'package:leer_escribir/styles.dart/styles.dart';

class Emotion {
  int id;
  String icon;
  String text;

  Emotion({
    required this.id,
    required this.icon,
    required this.text,
  });
}

List<Emotion> _emotions = [
  Emotion(id: 0, icon: "cry.png", text: "Quiero llorar"),
  Emotion(id: 1, icon: "anger.png", text: "Me siento Enojado"),
  Emotion(id: 2, icon: "wonder.png", text: "Tengo Pena"),
  Emotion(id: 3, icon: "smile.png", text: "Me siento Feliz"),
  Emotion(id: 4, icon: "fear.png", text: "Tengo Miedo"),
];

class Motion extends StatefulWidget {
  const Motion({super.key});

  @override
  State<Motion> createState() => _MotionState();
}

class _MotionState extends State<Motion> {
  Emotion? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selected == null ? "Como me Siento?" : selected!.text,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 10),
              DragTarget<Emotion>(
                onAccept: (data) {
                  setState(() {
                    selected = data;
                  });
                },
                builder: (context, candidateData, rejectedData) {
                  return CircleAvatar(
                    backgroundColor: Colors.deepOrange.shade100,
                    radius: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: selected != null
                          ? Image.asset("assets/feelings/${selected!.icon}")
                          : null,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 150,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _emotions.map<Widget>(buildIcon).toList(),
                ),
              ),
              ElevatedButton(
                style: Styles.button_style,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/close.png"),
                  width: 100,
                  // height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIcon(Emotion icon) {
    final id = icon.id;
    return Draggable(
      data: icon,
      feedback: Material(
        child: SizedBox(
          height: 80,
          width: 80,
          child: Image.asset("assets/feelings/${icon.icon}"),
        ),
      ),
      child: Container(
        height: 60,
        width: 60,
        margin: EdgeInsets.only(
          top: id == 1 || id == 3
              ? 35
              : id == 2
                  ? 45
                  : 0,
        ),
        child: Image.asset("assets/feelings/${icon.icon}"),
      ),
    );
  }
}
