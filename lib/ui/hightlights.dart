import 'package:flutter/material.dart';

import 'drawerwidget.dart';

class Hightlight extends StatelessWidget {
  const Hightlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Highlights",
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
