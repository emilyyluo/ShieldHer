import 'package:flutter/material.dart';
import 'package:shieldher/screens/signup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shieldher/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<bool> loginUser() async {
    var url = Uri.parse(
        'http://localhost:8080/login'); // Replace with your login API URL

    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'userName': usernameController.text,
        'password': passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      print('Login Successful');
      print('Signup Successful');

      return true;
      // You can navigate to another screen or perform other actions here
    } else {
      print('${response.reasonPhrase}');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Invalid UserName and Password'),
            content: Text('Error: ${response.reasonPhrase}'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    // Handle login error, display a message to the user, etc.
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            _buildLogin(context),
            SignUpScreen(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: const [
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              icon: Icon(Icons.add_circle_outline),
            ),
          ],
          indicatorColor: Color.fromARGB(0, 87, 61, 43),
          unselectedLabelColor: Color.fromARGB(255, 232, 217, 193),
          labelColor: Color.fromARGB(255, 87, 61, 43),

        ),
        backgroundColor: Color.fromARGB(255, 203, 133, 137),
      ),
    );
  }

  Widget _buildLogin(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 217, 193),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //USER INPUT
                SizedBox(height: 50),
                Text(
                  'Welcome to ShieldHer!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color.fromARGB(255, 87, 61, 43),
                  ),
                ),
                SizedBox(height: 180),
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
                    controller: usernameController,
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
                  'Password',
                  style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 87, 61, 43),
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: 'Enter a password',
                    ),
                  ),
                ),

                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(180),
                    // backgroundColor: Color.fromARGB(255, 221, 232, 185),
                    // backgroundColor: Color.fromARGB(255, 203, 133, 137),
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 60,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  onPressed: () async {
                    // await loginUser();
                    bool loginSuccess = await loginUser();
                    if (loginSuccess) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Success'),
                            content: Text('Welcome to ShieldHer'),
                            actions: <Widget>[
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HomePage()), // Replace with your login page widget
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      );
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => HomePage(),
                      //   ),
                      // );
                    } else {
                      print("Wrong ID Password");
                    }
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Color.fromARGB(255, 87, 61, 43),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
