import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 217, 193),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //USER INPUT
                  SizedBox(height: 30),
                  Text(
                    'SignUp to ShieldHer!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(height: 80),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                        hintText: 'Enter a username',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'First Name',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                        hintText: 'Enter first name',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                        hintText: 'Enter last name',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                        hintText: 'Enter email',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                        hintText: 'Enter a password',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 87, 61, 43),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                        hintText: 'Enter number',
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(180),
                      backgroundColor: Color.fromARGB(255, 221, 232, 185),
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        // side: BorderSide(
                        //     color: Color.fromARGB(255, 238, 153, 64)),
                      ),
                    ),
                    onPressed: () async {
                      print("going to validate login info");
                      //go to home after signup if authenticated
                      //pop up box disclaimer for phone call page --> how to exit
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Color.fromARGB(255, 87, 61, 43),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
