import 'package:flutter/material.dart';

import 'ui/drawerwidget.dart';
import 'ui/hightlights.dart';
import 'ui/live.dart';
import 'ui/upcoming.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int currentTab = 0;
  List screens = [Live(), Upcoming(), Hightlight()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 238, 239, 242),
              Color.fromARGB(255, 227, 227, 230),
            ]),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.blueGrey,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Botton(
              title: "Home",
              iconn: Icons.home,
              onTap: () {
                setState(() {
                  currentTab = 0;
                });
              },
              isActive: currentTab == 0,
            ),
            Botton(
              title: "UpComing",
              iconn: Icons.live_tv,
              onTap: () {
                setState(() {
                  currentTab = 1;
                });
              },
              isActive: currentTab == 1,
            ),
            Botton(
              title: "Highlights",
              iconn: Icons.movie,
              onTap: () {
                setState(() {
                  currentTab = 2;
                });
              },
              isActive: currentTab == 2,
            )
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}

class Botton extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function() onTap;
  final IconData iconn;

  const Botton(
      {super.key,
      required this.title,
      required this.isActive,
      required this.onTap,
      required this.iconn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(microseconds: 200),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive
              ? Colors.white
              : const Color.fromARGB(255, 248, 235, 235),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Column(
          children: [
            Icon(
              iconn,
              color: isActive
                  ? Color.fromARGB(255, 18, 15, 15)
                  : const Color.fromARGB(255, 36, 32, 18),
            ),
            isActive
                ? Text(
                    title,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 35, 35, 35),
                      fontSize: 8,
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
