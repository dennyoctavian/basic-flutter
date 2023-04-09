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
          title: const Text("Latihan Row dan Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Text 1"),
            const Text("Text 2"),
            const Text("Text 3"),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
