import 'package:flutter/material.dart';

import 'drawerwidget.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "UpComing",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.group))],
      ),
      drawer: DrawerWidget(),
    );
  }
}
