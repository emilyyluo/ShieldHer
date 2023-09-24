import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PhoneCall extends StatelessWidget {
  final AudioPlayer audioPlayer = AudioPlayer();

  Future<void> playAudio() async {
    await audioPlayer.play('assets/audio/testingAudio.m4a');
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
          child: Column(
            children: [
              ElevatedButton ( 
                onPressed: () { 
                  showDialog(
                context: context,
                builder: (BuildContext context) { 
                  return AlertDialog(
                    title: Text("Location Sent"),
                    content: Text("Your location has been sent to your emergency contacts"),
                    actions: [
                      TextButton(
                        child: Text("Close", 
                          style: TextStyle (
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
                style: ButtonStyle ( 
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red.withOpacity(0.7)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                )
              ),
              SizedBox(height: 16), // Add some space between the buttons
              ElevatedButton(
                onPressed: () async {
                  await playAudio(); // Play audio when this button is clicked
                },
                child: Text("Play Audio"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.withOpacity(0.7)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}