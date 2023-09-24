import 'package:flutter/material.dart';
import 'package:shieldher/screens/signup.dart';
import 'package:shieldher/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    ); 
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
