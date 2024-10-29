import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(musicWidget());
}

class musicWidget extends StatelessWidget {
  const musicWidget({super.key});
  void playmusic(int musicnumber) {
    final player = AudioPlayer();
    player.play(AssetSource("music-$musicnumber.mp3"));
  }

  Expanded mybutton(int musicnumber, Color buttoncolor, String buttontext) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: () {
            playmusic(musicnumber);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: buttoncolor,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  buttontext,
                  style: TextStyle(color: buttoncolor, fontSize: 30.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(147, 101, 184, 1),
        appBar: AppBar(
          title: Text(
            "RingTones",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(95, 29, 170, 1),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            mybutton(1, Colors.blue, "samsun galaxy"),
            mybutton(2, Colors.green, "samsun note"),
            mybutton(3, Colors.black, "nokia"),
            mybutton(4, Colors.orange, "iphone 11"),
            mybutton(5, const Color.fromRGBO(59, 223, 27, 1), "whatsapp"),
            mybutton(6, Colors.purple, "samsun s7"),
            mybutton(7, Colors.yellow, "iphone 6"),
          ],
        ),
      ),
    );
  }
}
