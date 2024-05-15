import 'package:flutter/material.dart';
import 'package:screen_assingment3_5/screens/assingment1.dart';
import 'package:screen_assingment3_5/screens/assingment2.dart';
import 'package:screen_assingment3_5/screens/assingment3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue, title: const Text("Assingments")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Assingment1(),
                  ));
            },
            child: const Text("Assignment 1"),
          ),
          ElevatedButton(
            child: const Text("Assingment 2"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Assingment2(),
                  ));
            },
          ),
          ElevatedButton(
            child: const Text("Assingment 3"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Assingment3(),
                  ));
            },
          )
        ]),
      ),
    );
  }
}
