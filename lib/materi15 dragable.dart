import 'package:flutter/material.dart';

// Fungsi yang di jalan pertama kali
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Membuat variable untuk menamopung warnan
  Color color1 = Colors.red;
  Color color2 = Colors.blueAccent;
  Color targetcolor;

  // Membuat variable tipe BOOLean untuk mencatat sebuah warna benar atau tidak
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Dragable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Buat 2 buah lingkaran dengan SizedBox
                // Sizedbox membungkus widget yang tidak memiliki lebar dan tinggi
                // Bungkus SIzedbox dengan dragable
                // Dragable memiliki tipe data misalkan tipe datanya adalah color
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      // Stadiumborder untuk membuat ujung kotak menjadi melengkung bukan lingkaran karena sesuai dengan ukuran tinggi dan lebar
                      shape: StadiumBorder(),
                      // elevation membuat efek shadow
                      elevation: 3,
                    ),
                  ),
                  // chiildWhenDragging widget yang akan di berubah sesusai yang di drag
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      // Stadiumborder untuk membuat ujung kotak menjadi melengkung bukan lingkaran karena sesuai dengan ukuran tinggi dan lebar
                      shape: StadiumBorder(),
                      // elevation membuat efek shadow
                      elevation: 0,
                    ),
                  ),
                  // Membuat feedback untuk melihat bentuk lingkaran ketika sudah di drag
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      // Stadiumborder untuk membuat ujung kotak menjadi melengkung bukan lingkaran karena sesuai dengan ukuran tinggi dan lebar
                      shape: StadiumBorder(),
                      // elevation membuat efek shadow
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      // Stadiumborder untuk membuat ujung kotak menjadi melengkung bukan lingkaran karena sesuai dengan ukuran tinggi dan lebar
                      shape: StadiumBorder(),
                      // elevation membuat efek shadow
                      elevation: 3,
                    ),
                  ),
                  // chiildWhenDragging widget yang akan di berubah sesusai yang di drag
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      // Stadiumborder untuk membuat ujung kotak menjadi melengkung bukan lingkaran karena sesuai dengan ukuran tinggi dan lebar
                      shape: StadiumBorder(),
                      // elevation membuat efek shadow
                      elevation: 0,
                    ),
                  ),
                  // Membuat feedback untuk melihat bentuk lingkaran ketika sudah di drag
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      // Stadiumborder untuk membuat ujung kotak menjadi melengkung bukan lingkaran karena sesuai dengan ukuran tinggi dan lebar
                      shape: StadiumBorder(),
                      // elevation membuat efek shadow
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            // Membuat dragtarget untuk memnampung  dan mempuyai tipe data untuk menampung
            DragTarget<Color>(
              // onwillaccept untuk menerima data
              onWillAccept: (value) => true,
              // FUngsi yang dilakukan ketika menerima data
              onAccept: (value) {
                // kita buat jadi True ketika kita sudah menerima data warna
                isAccepted = true;
                targetcolor = value;
              },
              // Builder adalah sebuah metod yang akan di pakai untuk membuat widget drag target
              // Builder memiliki 3 parameter
              builder: (context, candidates, rejected) {
                // Logika perkondisian jika saya sudah menerima gambar maka (?) kita buat lingkaran yang lebih besar
                // return kita akan mengembalikan jika is accepted true dan false untuk yang bawah
                return (isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetcolor,
                          // Stadiumborder untuk membuat ujung kotak menjadi melengkung bukan lingkaran karena sesuai dengan ukuran tinggi dan lebar
                          shape: StadiumBorder(),
                          // elevation membuat efek shadow
                          elevation: 0,
                        ),
                        // Lalu jika sizedbox false maka saya akan tampilkan
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.grey,
                          // Stadiumborder untuk membuat ujung kotak menjadi melengkung bukan lingkaran karena sesuai dengan ukuran tinggi dan lebar
                          shape: StadiumBorder(),
                          // elevation membuat efek shadow
                          elevation: 0,
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
