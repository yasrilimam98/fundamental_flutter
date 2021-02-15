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
          title: Text("Latihan Container"),
        ),

        body: Container(
          // Properti container
          // margin jarak antara container dengan widget lainnya di luar container
          // padding jarak dari sisi container ke dalam widget container
          // custome margin kiri kanan atas bawah menggunakan FRMTRB
          // padding only custome atas bawah kiri kanan
          // decoration container
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          // padding: EdgeInsets.all(10),
          padding: EdgeInsets.only(bottom: 20, top: 30),
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                // Properti decoration gradient
                // border radius
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.amber, Colors.blue])),
          ),
        ),
      ),
    );
  }
}
