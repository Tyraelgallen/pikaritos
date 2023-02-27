import 'package:flutter/material.dart';

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
  Emotion(id: 0, icon: "cry.png", text: "Crying"),
  Emotion(id: 1, icon: "anger.png", text: "Angery"),
  Emotion(id: 2, icon: "wonder.png", text: "Shy"),
  Emotion(id: 3, icon: "smile.png", text: "Laughing"),
  Emotion(id: 4, icon: "fear.png", text: "Fear"),
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
                selected == null ? "How you feel?" : selected!.text,
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
                    radius: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: selected != null
                          ? Image.asset("assets/${selected!.icon}")
                          : null,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _emotions.map<Widget>(buildIcon).toList(),
                ),
              )
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
          height: 100,
          width: 100,
          child: Image.asset("assets/${icon.icon}"),
        ),
      ),
      child: Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.only(
          top: id == 1 || id == 3
              ? 35
              : id == 2
                  ? 45
                  : 0,
        ),
        child: Image.asset("assets/${icon.icon}"),
      ),
    );
  }
}
