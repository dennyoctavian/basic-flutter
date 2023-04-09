import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> widgets = [];

  // _HomeScreenState() {
  //   for (var i = 0; i < 20; i++) {
  //     currentIndex = i;
  //     widgets.add(Text(
  //       "Data $i",
  //       style: const TextStyle(fontSize: 35),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Listview"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      currentIndex += 1;
                      setState(() {
                        widgets.add(Text(
                          "Data $currentIndex",
                          style: const TextStyle(fontSize: 35),
                        ));
                      });
                    },
                    child: const Text("Tambah Data")),
                ElevatedButton(
                    onPressed: () {
                      currentIndex -= 1;
                      setState(() {
                        widgets.removeLast();
                      });
                    },
                    child: const Text("Hapus Data"))
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
