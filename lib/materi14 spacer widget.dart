import 'package:flutter/material.dart';

// Fungsi yang di jalan pertama kali
void main() => runApp(MyApp());

// Widget stack dan widget alignment sangat berguna mendesain layout

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Belajar Spacer Widget"),
      ),
      body: Center(
        child: Row(
          // Di dalam widget row kita buat mainAxisAlignment
          // Untuk membagi antara container 1 dan lainnya
          // dengan menggunakan spaceEvenly
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Fungsi flex untuk membandingkan antar sisi dari widget spacer
            Spacer(flex: 1),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Spacer(flex: 2),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            Spacer(flex: 3),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    ));
  }
}
