import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Text Field"),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                // Obscure Text For Password
                // obscureText: true,
                // Styling
                decoration: InputDecoration(
                    icon: const Icon(Icons.login),
                    // Jika ingin menggunakan suffix, suffixText tidak bisa digunakan (Pilih salah satu)
                    // Jika ingin menggunakan prefix, prefixText tidak bisa digunakan (Pilih salah satu
                    prefixIcon: const Icon(Icons.person),
                    prefixText: "Name: ",
                    // FillColor and filled satu paket
                    fillColor: Colors.red,
                    filled: true,
                    prefixStyle: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                    labelText: "Nama Lengkap",
                    labelStyle: const TextStyle(
                        color: Colors.amber, fontWeight: FontWeight.w500),
                    hintText: "Nama Lengakpnya Loh",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                maxLength: 5,
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
