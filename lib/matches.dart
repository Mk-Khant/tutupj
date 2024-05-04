import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  final String team1logo, team1title, team2logo, team2title, date, time;
  final bool isTake;
  const Matches(
      {super.key,
      required this.team1logo,
      required this.team1title,
      required this.team2logo,
      required this.team2title,
      required this.isTake,
      required this.date,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 237, 220, 210),
          ),
          child: Row(
            children: [
              Text(team1title,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Image.asset(
                    team1logo,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(time,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Text(date,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Image.asset(
                    team2logo,
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(team2title,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
            top: 0,
            right: 10,
            left: 10,
            child: Container(
              width: 80,
              height: 3,
              decoration: BoxDecoration(
                color: isTake
                    ? Color.fromARGB(255, 59, 59, 75)
                    : Color.fromARGB(255, 9, 220, 9),
                borderRadius: BorderRadius.circular(20),
              ),
            ))
      ],
    );
  }
}
