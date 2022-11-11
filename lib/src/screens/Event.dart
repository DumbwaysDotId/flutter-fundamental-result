import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("If you press Click Here then an alert will appear"),
          TextButton(
              onPressed: (() {
                print("Hello Full-Stack Bootcamp Participants");
              }),
              child: Text("Click here")),
          Text("If you press Greeting then an alert will appear"),
          TextButton(
              onPressed: (() {
                print("=> Good Morning Everyone Have a Nice Day");
              }),
              child: Text("Greeting")),
        ],
      )),
    );
  }
}
