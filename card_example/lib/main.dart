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
        backgroundColor: Colors.green,
        body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: const [
              BuildCard(Icon(Icons.adb), "Serangga Android"),
              BuildCard(Icon(Icons.email), "Email"),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  final Icon cardIcon;
  final String text;
  const BuildCard(
    this.cardIcon,
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: cardIcon,
            ),
            Text(text)
          ],
        ));
  }
}
