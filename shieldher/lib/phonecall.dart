import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PhoneCall extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 82, 72, 60),
      ),
      body: Center ( 
        child: PhoneScreen ()
      ),
    ); 
  }
}



class PhoneScreen extends StatelessWidget {
  final AudioPlayer audioPlayer = AudioPlayer();

  Future<void> playAudio() async {
    await audioPlayer.play('assets/audio/testingAudio.m4a'); // Replace with your audio file path
    print("should have played");
  }

  @override
  Widget build(BuildContext context) {
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
        Positioned (
          bottom: 10, 
          right: 16, 
          child: ElevatedButton ( 
            onPressed: () async { 
              await playAudio();
              print('shouldhaveplayedJFAKDJFHDKJHFDJBFDF');
            },
            child: Text("Send Location"),
            style: ButtonStyle ( 
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red.withOpacity(0.7)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            )
          ),
        ),
      ],
    );
  }
}