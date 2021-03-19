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
        title: Text("Latihan Stack dan Align"),
      ),
      // Stack itu apa ? Menuyusun widget dengan menumpuk atau ke depan
      // ada bagian paling belakang sampai bagian ke depan
      // Sedangkan colum menyusun widget ke bawah
      // Row menyusun widget ke samping
      // Aplikasi yang kita buat memiliki 3 susunan layout yaitu
      // 1 background
      // 2 Text
      // 3 Ada button
      // Menggunakan widget stack
      body: Stack(
        children: <Widget>[
          // Dalam children memiliki 3 properti
          // Background -> saya ingin buat backgroud 2 ke bawah dan 2 ke atas dengan widget Col dan ROW
          Column(
            children: <Widget>[
              // Karena disini kita menggunakan backgroud 1 : 1 jadi kita menggunakan widget flexibel
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.black12,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Listview dengan text
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 40)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 40)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 40)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 40)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 40)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari stack",
                        style: TextStyle(fontSize: 40)),
                  ),
                ],
              ),
            ],
          ),
          // Button
          // Bungkus dengan align Raisedbutton untuk memindah posisi button
          Align(
            alignment: Alignment(0, 0.9),
            child: RaisedButton(
              child: Text("My Button"),
              color: Colors.blueAccent,
              onPressed: () {},
            ),
          )
        ],
      ),
    ));
  }
}
