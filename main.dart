import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 223, 196, 15)),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(35.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // Welcome back
              Text(
                'Welcome back',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),

              // Login to your account
              Text(
                'Login to your account',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 2),
                  fontSize: 45,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(height: 15),

              // Email textfield
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 76.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 2, 21, 37))),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 190, 186, 175)),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'email',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 26, 27, 10),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Password textfield
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 76.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 2, 21, 37))),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 202, 157, 7)),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'password',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 25, 26, 24),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Remember me and Forgot password
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 75.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                        ),
                        Text(
                          'Remember me?',
                          style: TextStyle(color: Color.fromARGB(255, 4, 5, 6)),
                        ),
                      ],
                    ),
                    Text(
                      'forgot password?',
                      style: TextStyle(color: Color.fromARGB(255, 12, 86, 160)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),

              // Sign In button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 500.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('login now'),
                ),
              ),

              //google button

              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 465.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color.fromARGB(221, 0, 0, 0),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/google.jpg',
                        height: 25,
                      ),
                      SizedBox(width: 7),
                      Text('Login with Google'),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        )));
  }
}
