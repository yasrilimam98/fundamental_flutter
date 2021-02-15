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
          title: Text("Belajar Flutter"),
        ),
        // Body buat isi
        // bungkus text dengan widget center agar text ke tengah
        body: Center(child: Text("Hello Programming")),
      ),
    );
  }
}
