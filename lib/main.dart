import 'package:flutter/material.dart';
import 'src/widgets/header.dart';
import 'src/widgets/content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Container(
          child: Column(children: [Header(), Content()]),
        ),
      )),
    );
  }
}
