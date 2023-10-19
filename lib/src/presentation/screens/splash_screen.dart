import 'package:figmaaapdemo/src/presentation/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Duration splashDuration = Duration(seconds: 3);

    // Use Future.delayed to wait for the specified duration.
    Future.delayed(splashDuration, () {
      // After the delay, navigate to the next screen.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          // Replace 'NextScreen' with the screen you want to navigate to.
          return Dashboard();
        }),
      );
    });
    return Scaffold(
      backgroundColor: Colors.transparent, // Set the background to transparent
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // Start at the top of the screen
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF02495C),
              Color(0xFF01212E)
            ], // Replace with your gradient colors
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 321,
                height: 321,
                child: Image.asset(
                  'images/Group 22.png',
                  // Replace with the path to your image asset
                  width: 400, // Set the image width
                  height: 200, // Set the image height
                ),
              ),

              // Text(
              //   'Your Text',
              //   style: TextStyle(
              //     fontSize: 24, // Set the text font size
              //     color: Colors.white, // Set the text color
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
