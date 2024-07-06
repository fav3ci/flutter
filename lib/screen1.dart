import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 253, 253),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 117, 173, 209),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 69,
            ),
            //login

            Text(
              'Login to your Account',
              style: TextStyle(
                color: Colors.black,
                fontSize: 56,
              ),
            ),
            SizedBox(
              height: 69,
            ),

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
                obscureText: true,
              ),
            ),
            SizedBox(height: 45),

            ElevatedButton(
              onPressed: () {
                //goto new page

                Navigator.of(context).pushNamed('screen2');
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(),
                  ),
                  backgroundColor: const Color.fromARGB(255, 118, 175, 222),
                  textStyle: TextStyle(fontWeight: FontWeight.w700),
                  foregroundColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
