import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'config/injection/injection.dart';
import 'models/forecast/forecast.dart';
import 'models/json/coord/coord.dart';
import 'models/json/description/description.dart';
import 'models/json/weather/weather.dart';
import 'models/json/wind/wind.dart';
import 'screens/main_screen/main_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ForecastHiveAdapter());
  Hive.registerAdapter(CoordHiveAdapter());
  Hive.registerAdapter(WindHiveAdapter());
  Hive.registerAdapter(WeatherHiveAdapter());
  Hive.registerAdapter(DescriptionHiveAdapter());
  await Hive.openBox<Forecast>('forecast');
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
