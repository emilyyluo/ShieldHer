import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PhoneCall extends StatefulWidget {
  @override
  _PhoneCallState createState() => _PhoneCallState();
}

// class PhoneCall extends StatelessWidget {
class _PhoneCallState extends State<PhoneCall> {
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    // Play the audio file when the screen initially opens
    playAudio();
    // call();
  }

  Future<void> playAudio() async {
    await audioPlayer.play(
        'assets/audio/testingAudio.m4a'); // Replace with your audio file path
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 82, 72, 60),
      ),
      body: Center(child: PhoneCall()),
    );
  }

  // class PhoneScreen extends StatelessWidget {
  // @override
  Widget call(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/phonecall.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 16,
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Location Sent"),
                      content: Text(
                          "Your location has been sent to your emergency contacts"),
                      actions: [
                        TextButton(
                          child: Text("Close",
                              style: TextStyle(
                                color: Colors.black,
                              )),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Send Location"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.red.withOpacity(0.7)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              )),
        ),
      ],
    );
  }
}



