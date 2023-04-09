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
          title: const Text("Belajar Stack dan Align"),
        ),
        body: Stack(
          children: [
            //background
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        color: Colors.white,
                      )),
                      Flexible(
                          child: Container(
                        color: Colors.grey,
                      ))
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        color: Colors.grey,
                      )),
                      Flexible(
                          child: Container(
                        color: Colors.white,
                      ))
                    ],
                  ),
                )
              ],
            )
            //listview dengan text
            ,
            ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: const [
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "Ini adalah text yang ada di tengah",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                )
              ],
            )
            //button ditengah bawah
            ,
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 180,
                  margin: const EdgeInsets.only(bottom: 50),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Button")),
                ))
          ],
        ),
      ),
    );
  }
}
