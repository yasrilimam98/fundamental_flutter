import 'package:flutter/material.dart';

// Fungsi yang di jalan pertama kali
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: <Widget>[
            // Membuat Container di dalam container ada widget row untuk membagi container pertama ke dalam 3 warna
            // Flex untuk membagi perbandingan
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5), color: Colors.green)),
                  Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5), color: Colors.purple)),
                  Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5), color: Colors.orange)),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                    margin: EdgeInsets.all(5), color: Colors.blueAccent)),
            Flexible(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.all(5), color: Colors.yellowAccent)),
          ],
        ),
      ),
    );
  }
}
