import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mainScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: AssetImage('assets/images/img2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        radius: 80.0,
                        child: Text(
                          "HELLO WORLD",
                          style: GoogleFonts.aldrich(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 30.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 100.0, left: 100.0),
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.white,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.grey),
                          minHeight: 10.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 10.0))
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
