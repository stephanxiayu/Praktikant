import 'package:flutter/material.dart';
import 'package:stephans_intern/tagebuch.dart';
import 'package:stephans_intern/visionboard.dart';
import 'package:stephans_intern/w%C3%BCnsche.dart';
import 'package:stephans_intern/ziele.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key key}) : super(key: key);
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("lib/assets/12.png"),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Stephan",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Software Engenieer",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Stephan.Entwickler@gmail.com",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Wunsche()),
          );
        },
        leading: Icon(
          Icons.bubble_chart,
          color: Colors.black,
        ),
        title: Text("Wünsche"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Ziele()),
          );
        },
        leading: Icon(
          Icons.inbox,
          color: Colors.black,
        ),
        title: Text("Ziele"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VisionBoard()),
          );
        },
        leading: Icon(
          Icons.assessment,
          color: Colors.black,
        ),
        title: Text("VisionBoard"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Tagebuch()),
          );
        },
        leading: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: Text("Tagebuch"),
      ),
    ]);
  }
}
