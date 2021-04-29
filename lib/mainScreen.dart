import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            primaryColor: Colors.blueGrey),
        home: Scaffold(
            body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[100],
                      radius: 100.0,
                      child: Center(
                        child: Text("WELCOME TO FLUTTER",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lora(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0)),
                      ),
                    ),
                  ],
                )),
          ],
        )));
  }
}
