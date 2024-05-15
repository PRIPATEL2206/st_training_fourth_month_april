import 'package:flutter/material.dart';
import 'package:screen_assingment3_5/controler/user_controler.dart';
import 'package:screen_assingment3_5/models/User.dart';

class Assingment3 extends StatefulWidget {
  const Assingment3({super.key});

  @override
  State<Assingment3> createState() => _Assingment3State();
}

class _Assingment3State extends State<Assingment3> {
  List<User> userData = [];

  @override
  void initState() {
    UserControler.loadUser().then((value) {
      userData = value;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Messages")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: userData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("${userData[index].photoUrl}"),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${userData[index].name}"),
                    Text("${userData[index].time}"),
                  ]),
            );
          },
        ),
      ),
    );
  }
}
