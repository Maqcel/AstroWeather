import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Future<void> main() async {
  String directoryPath = Directory.current.path;
  Hive..init(directoryPath);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AstroWeather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
