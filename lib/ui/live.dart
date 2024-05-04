import 'package:flutter/material.dart';

import 'drawerwidget.dart';

class Live extends StatelessWidget {
  const Live({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TuTuWatch",
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
