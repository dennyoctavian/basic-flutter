import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(2),
            child: const Image(
              // Menggunakan Gambar Dengan Asset
              image: AssetImage('assets/cr.png'),
              // Menggunakan Gambar Dari Internet atau API
              // image: NetworkImage(
              //     "https://awsimages.detik.net.id/community/media/visual/2023/02/21/cristiano-ronaldo-al-nassr-al-wehda-liga-pro-arab-saudi-saudi-pro-league-cr7_169.jpeg?w=700&q=90"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
