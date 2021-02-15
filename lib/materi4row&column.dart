import 'package:flutter/material.dart';

// Fungsi yang di jalan pertama kali
void main() {
  runApp(MyApp());
}

// buat class my app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material app itu sebuah widget yang berisi data sebuah aplikasi yang membutuhkan design
    return MaterialApp(
      // widget scaffold adalah tampilan dasar dari sebuah aplikasi
      home: Scaffold(
        // properti scaffold
        // Appbar buat judul
        appBar: AppBar(
          title: Text("Latihan Row Column"),
        ),
        // Widget column untuk menyusun widget di dalamnya secara vertical
        // Widget row untuk ke samping tinggal di ganti aja
        // properti row dan column main axisaligment.center untu meletakkan ke tengah
        // Cross axisligment untuk rata kiri ataupun kanan
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          // Kumpulan beberapa widget
          children: <Widget>[
            Text("Text 1"), Text("Text2"), Text("Text3"),
            // Buat widget Row untuk menggabungkan column dan row
            Row(
              children: <Widget>[
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
