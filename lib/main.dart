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
  // membuat methdo untuk menampilkan di text dengan string
  String message = "Ini adalah Text";

  // Membuat void untuk di tekan di onpress

// Hapus method void untuk membuat message di onpress dengan method anonymous
  // void tombolDitekan() {
  //   // Memanpilkan pesan
  //   // Buat setState biar tampilak terupdate
  //   setState(() {
  //     message = "Tombol sudah di tekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          // dalam widget center ada widget column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Membuat 2 widget dalam childreen
            children: <Widget>[
              // Panggil method message
              Text(message),
              RaisedButton(
                child: Text("Tekan saya"),
                // Anonymous metode
                // Untuk menampilkan message
                onPressed: () {
                  setState(() {
                    message = "Tombol sudah di tekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Kapan kita menggunakan anonymous method ? kita hanya memanggil satu kali saja
// tidak memanggil di tempat lain atau meringkas code program lebih ringkas lagi
