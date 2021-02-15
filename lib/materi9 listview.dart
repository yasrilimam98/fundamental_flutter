import 'package:flutter/material.dart';

// Fungsi yang di jalan pertama kali
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Membuat List di widget agar tidak di masukin manual
  List<Widget> widgets = [];
  // Membuat counter untuk mencatat nomor
  int counter = 1;

  // Membuat Constructor state
  // _MyAppState() {
  //   // Looping data list
  //   for (int i = 0; i < 25; i++)
  //     widgets.add(Text(
  //       "Data ke -" + i.toString(),
  //       style: TextStyle(fontSize: 40),
  //     ));
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan ListView"),
        ),
        body: ListView(
          // memanggil widgets di list ke dalam children
          // Menambahkan row ke dalam widget untuk membuat buttom ke samping
          children: <Widget>[
            Row(
              // Agar button tidak mepet tambahin Main Axisligment
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    // Anonymous method di dalam nya ada counter untuk tambah data
                    setState(() {
                      widgets.add(Text(
                        "Data ke-" + counter.toString(),
                        style: TextStyle(fontSize: 40),
                      ));
                      counter++;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    // Anonymous method di dalam nya ada counter untuk hapus data
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                )
              ],
            ),
            Column(
              // Cross axisligment untuk horizontal
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
