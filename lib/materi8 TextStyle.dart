import 'package:flutter/material.dart';

// Fungsi yang di jalan pertama kali
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar TextStyle"),
        ),
        // Belajar text style beserta propertinya
        body: Center(
          child: Text(
            "Ini adalah Text",
            style: TextStyle(
                fontFamily: "LemonJellyPersonalUse-dEqR",
                fontStyle: FontStyle.italic,
                fontSize: 40,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
