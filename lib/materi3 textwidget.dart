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
        // Bungkus text dengan widget container
        // Container untuk menambahkan properti style text
        body: Center(
            child: Container(
                color: Colors.blueAccent,
                width: 150,
                height: 150,
                // maxline buat maksimal baris
                // Overlow menampil text saat terpotong / memastikan text terpotong
                // softWrap false text tidak turun ke bawah
                // Text align atur text rata kiri kanan tengah dll
                // style mengatur style
                child: Text(
                  "Hello Programming saya dari Lombok Indonesia ",
                  // maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                  // softWrap: false,
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))),
      ),
    );
  }
}
