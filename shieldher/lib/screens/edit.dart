import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
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
                        'Personal Info',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Color.fromARGB(255, 87, 61, 43),
                        ),
                      ),

//-----list of info -------
                      Column(
                        children: [


                          // ------email-------
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email Address     ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 87, 61, 43),
                                      ),
                                    ),
                                  ]),

                              SizedBox(
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Edit email',
                                  ),
                                ),
                              ),
                              Icon(Icons.refresh),

                            ],
                          ),
                          SizedBox(height: 20),


// ------password--------
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Password             ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 87, 61, 43),
                                      ),
                                    ),
                                  ]),

                              SizedBox(
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Edit password',
                                  ),
                                ),
                              ),
                              Icon(Icons.refresh),

                            ],
                          ),
                          SizedBox(height: 20),


// ----phone number -------
Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Phone Number     ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 87, 61, 43),
                                      ),
                                    ),
                                  ]),

                              SizedBox(
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Edit number',
                                  ),
                                ),
                              ),
                              Icon(Icons.refresh),

                            ],
                          ),
                          SizedBox(height: 20),


                          
                        ],
                      )

                      //   ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //         backgroundColor: Color.fromARGB(255, 203, 133, 137),
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(15),
                      //         ),
                      //       ),
                      //       onPressed: () async {
                      //         print("going to validate login info");
                      //         // go to home after Edit if authenticated
                      //         // pop-up box disclaimer for phone call page --> how to exit
                      //       },
                      //       child: Icon(Icons.refresh),
                      //     ),
                      //     Text(
                      //   'Email',
                      //   style: TextStyle(
                      //     fontSize: 15,
                      //     color: Color.fromARGB(255, 87, 61, 43),
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 300,
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(),
                      //       hintText: 'Enter email',
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(height: 20),
                      // Text(
                      //   'Phone Number',
                      //   style: TextStyle(
                      //     fontSize: 15,
                      //     color: Color.fromARGB(255, 87, 61, 43),
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 300,
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(),
                      //       hintText: 'Enter number',
                      //     ),
                      //   ),
                      // ),
                    ],
                    // ),);
                  ),
                ),
              ),
            )));
  }
}
