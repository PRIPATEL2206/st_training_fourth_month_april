import 'dart:math';

import 'package:flutter/material.dart';

class Assingment2 extends StatelessWidget {
  const Assingment2({super.key});

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "title": "Hey flatterrs,Se what I did with flutter",
        "subTitle": "That is just a text Descrgtion of the theme",
        "userImage": "assets/user1.jpg"
      },
      {
        "title": "Hey flatterrs,Se what I did with flutter",
        "subTitle": "That is just a text Descrgtion of the theme",
        "userImage": "assets/user2.jpg"
      },
      {
        "title": "Hey flatterrs,Se what I did with flutter",
        "subTitle": "That is just a text Descrgtion of the theme",
        "userImage": "assets/user3.jpg"
      },
      {
        "title": "Hey flatterrs,Se what I did with flutter",
        "subTitle": "That is just a text Descrgtion of the theme",
        "userImage": "assets/user4.jpg"
      },
      {
        "title": "Hey flatterrs,Se what I did with flutter",
        "subTitle": "That is just a text Descrgtion of the theme",
        "userImage": "assets/user5.jpg"
      },
      {
        "title": "Hey flatterrs,Se what I did with flutter",
        "subTitle": "That is just a text Descrgtion of the theme",
        "userImage": "assets/user6.jpg"
      },
    ];
    List colors = [
      Colors.red,
      Colors.yellow,
      Colors.indigo,
      Colors.green,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("List"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            Color cColor = colors[Random().nextInt(colors.length)];
            return SizedBox(
              height: 140,
              child: Row(children: [
                Container(
                  color: cColor,
                  width: 7,
                  height: double.infinity,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data[index]["title"],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        softWrap: true,
                      ),
                      Text(
                        data[index]["subTitle"],
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: double.infinity,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Positioned(
                        top: 30,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: cColor,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 10,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: const [BoxShadow(blurRadius: 2)]),
                          padding: const EdgeInsets.all(7),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(data[index]["userImage"])),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            );
          }),
    );
  }
}
