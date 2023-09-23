import 'package:flutter/material.dart';
import 'package:shieldher/screens/login.dart';

const isMac = false;

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.amber,
      //   primaryColor: Colors.amberAccent,
      // ),
      home: LoginScreen(), // Set LoginScreen as the home
    );
  }
}