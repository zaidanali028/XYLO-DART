import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(new MaterialApp(
      home: Xylophone(),
    ));

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      firstInstrument(Colors.red, "note1.wav"),
                      childInstruments(Colors.orange, "note2.wav"),
                      childInstruments(Colors.yellow, "note3.wav"),
                      childInstruments(Colors.green, "note4.wav"),
                      childInstruments(Colors.purple, "note5.wav"),
                      childInstruments(Colors.indigo, "note6.wav"),
                      lastInstrument(Colors.teal, "note7.wav"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget firstInstrument(Color color, String sound) {
    return MaterialButton(
      onPressed: () {
        AudioCache offlineAudioInstane = AudioCache();
        offlineAudioInstane.play(sound);
      },
      child: Container(
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ))),
    );
  }

  Widget childInstruments(Color color, String sound) {
    return MaterialButton(
      onPressed: () {
        AudioCache offlineAudioInstane = AudioCache();
        offlineAudioInstane.play(sound);
      },
      child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: color,
          )),
    );
  }

  Widget lastInstrument(Color color, String sound) {
    return MaterialButton(
      onPressed: () {
        AudioCache offlineAudioInstane = AudioCache();
        offlineAudioInstane.play(sound);
      },
      child: Container(
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ))),
    );
  }
}
