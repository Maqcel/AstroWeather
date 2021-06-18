import 'dart:io';
import 'package:astro_weather_2/config/injection/injection.dart';
import 'package:astro_weather_2/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String directoryPath = Directory.current.path;
  Hive..init(directoryPath);
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AstroWeather',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
