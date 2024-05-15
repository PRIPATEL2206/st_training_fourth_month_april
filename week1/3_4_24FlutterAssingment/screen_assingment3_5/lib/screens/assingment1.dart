import 'package:flutter/material.dart';
import 'package:screen_assingment3_5/controler/user_controler.dart';
import 'package:screen_assingment3_5/models/User.dart';

class Assingment1 extends StatefulWidget {
  const Assingment1({super.key});

  @override
  State<Assingment1> createState() => _Assingment1State();
}

class _Assingment1State extends State<Assingment1> {
  List<User> userData = [];

  @override
  void initState() {
    UserControler.loadUser().then((value) => setState(() {
          userData = value;
        }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
              foregroundImage: AssetImage("${userData[index].photoUrl}")),
          title: Text("${userData[index].name} "),
          subtitle: Text("${userData[index].msg}"),
          trailing: const Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}
