import 'package:flutter/material.dart';
import 'package:tutu_watch/matches.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello'),
            backgroundColor: const Color.fromARGB(255, 7, 255, 65),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Matches(
                        team1title: "Liverpool",
                        team1logo: "images/ww.png",
                        date: "30 Dec",
                        time: "1:00 AM",
                        team2logo: "images/ee.png",
                        team2title: "ManCity",
                        isTake: true,
                      ),
                      Matches(
                        team1title: "Liverpool",
                        team1logo: "images/ww.png",
                        date: "30 Dec",
                        time: "1:00 AM",
                        team2logo: "images/ee.png",
                        team2title: "ManCity",
                        isTake: true,
                      ),
                      Matches(
                        team1title: "Liverpool",
                        team1logo: "images/ww.png",
                        date: "30 Dec",
                        time: "1:00 AM",
                        team2logo: "images/ee.png",
                        team2title: "ManCity",
                        isTake: true,
                      ),
                      Matches(
                        team1title: "Liverpool",
                        team1logo: "images/ww.png",
                        date: "30 Dec",
                        time: "1:00 AM",
                        team2logo: "images/ee.png",
                        team2title: "ManCity",
                        isTake: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
