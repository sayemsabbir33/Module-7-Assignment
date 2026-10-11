import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "edge",
      home: Home(),
    );
  }
}
