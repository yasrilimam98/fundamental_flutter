import 'package:flutter/material.dart';

// Fungsi yang di jalan pertama kali
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              image: NetworkImage(
                  "https://cdn1.i-scmp.com/sites/default/files/styles/1200x800/public/images/methode/2018/07/26/bf01d32e-8fcd-11e8-ad1d-4615aa6bc452_1280x720_204951.jpg?itok=NjQWdY8Z"),
              // Fit untuk menyesuaikan dengan container yang di buat silahkan coba
              // properti di dalam widget boxfit
              fit: BoxFit.cover,
// Untuk memperluang gambar fungsi repeat di cleah yang kosong
              repeat: ImageRepeat.repeatX,
            ),
          ),
        ),
      ),
    );
  }
}
