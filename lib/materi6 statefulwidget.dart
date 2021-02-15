import 'package:flutter/material.dart';

// Fungsi yang di jalan pertama kali
void main() {
  runApp(MyApp());
}

// buat class my app
// Stateful widget memiliki 2 class
// class 1 yaitu my app dan yang ke 2 class state dan kita melakukan isi di class ke 2
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Buat method tekan tombol
  // method void untuk tidak mengembalikan apa-apa

  int number = 0;
  void tekanTombol() {
    // untuk me refresh tampilkan dengan set state atau fungsi untuk merubah tampilan untuk state saat ini
    // Mengubah state saat di tambah
    setState(() {
      // untuk menambah bilangan
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Stateful Widget"),
        ),
        body: Center(
          child: Column(
            // Namabh mainaxis untuk pidanh ke tengah
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // membuat text semakin besar saat state di tambah
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                child: Text("Tambah"),
                // buat method untuk di panggil ke dalam onpress
                // misalkan method tekanTombol
                onPressed: tekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Widget dibagi menjadi 2 yaitu
// Stateless itu adalah widget yang tidak memiliki state atau tidak keadaan
// perumpamaan stateless logo dan title appar tidak pernah berubah
// statefull widget yaitu widget sesuai dengan keadaannya saat button di klik bisa berubah-ubah
