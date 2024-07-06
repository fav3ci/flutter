import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 118, 186, 225),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250.0),
                child: Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed('screen1');
                },
                child: Text('go back'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(),
                    ),
                    backgroundColor: const Color.fromARGB(255, 118, 175, 222),
                    textStyle: TextStyle(fontWeight: FontWeight.w700),
                    foregroundColor: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
