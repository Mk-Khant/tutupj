import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/Dog.jpg"),
              ),
              accountName: Text("TuTuWatch"),
              accountEmail: Text("aaaaaa@gmail.com")),
          Expanded(
              child: ListView(
            children: [
              Card(
                color: Colors.amber,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("profile"),
                ),
              ),
              Card(
                color: Colors.amber,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("setting"),
                ),
              ),
              Card(
                color: Colors.amber,
                child: ListTile(
                  leading: Icon(Icons.science),
                  title: Text("About"),
                ),
              ),
            ],
          )),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          )
        ],
      ),
    );
  }
}
